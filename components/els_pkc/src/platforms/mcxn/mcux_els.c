/*
 *     Copyright 2021 - 2023 NXP
 *     All rights reserved.
 *
 *     SPDX-License-Identifier: BSD-3-Clause
 */

#include "mcux_els.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/
/*******************************************************************************
 * Prototypes
 ******************************************************************************/
static status_t ELS_PRNG_KickOff(void);
static status_t ELS_check_key(mcuxClEls_KeyIndex_t keyIdx, mcuxClEls_KeyProp_t *pKeyProp);
/*******************************************************************************
 * Code
 ******************************************************************************/
/*!
 * brief ELS Init after power down.
 *
 * This function enable all ELS related clocks, enable ELS and start ELS PRNG.
 * Normally all of these actions are done automatically by boot ROM, but if an application uses Power Down mode
 * this function must be called before using ELS after wake-up.
 *
 * param base ELS peripheral address.
 *
 * return kStatus_Success upon success, kStatus_Fail otherwise
 */
status_t ELS_PowerDownWakeupInit(S50_Type *base)
{
    status_t status = kStatus_Fail;

    /* Enable GDET and DTRNG clocks */
    SYSCON->REF_CLK_CTRL_SET =
        SYSCON_REF_CLK_CTRL_SET_GDET_REFCLK_EN_SET_MASK | SYSCON_REF_CLK_CTRL_SET_TRNG_REFCLK_EN_SET_MASK;

    /* Enable ELS clock */
    CLOCK_EnableClock(kCLOCK_Css);

    /* Enable ELS */
    MCUX_CSSL_FP_FUNCTION_CALL_BEGIN(result, token, mcuxClEls_Enable_Async()); // Enable the ELS.
    // mcuxClEls_Enable_Async is a flow-protected function: Check the protection token and the return value
    if ((MCUX_CSSL_FP_FUNCTION_CALLED(mcuxClEls_Enable_Async) != token) || (MCUXCLELS_STATUS_OK_WAIT != result))
    {
        return kStatus_Fail;
    }
    MCUX_CSSL_FP_FUNCTION_CALL_END();

    MCUX_CSSL_FP_FUNCTION_CALL_BEGIN(
        result, token,
        mcuxClEls_WaitForOperation(
            MCUXCLELS_ERROR_FLAGS_CLEAR)); // Wait for the mcuxClEls_Enable_Async operation to complete.
    // mcuxClEls_WaitForOperation is a flow-protected function: Check the protection token and the return value
    if ((MCUX_CSSL_FP_FUNCTION_CALLED(mcuxClEls_WaitForOperation) != token) || (MCUXCLELS_STATUS_OK != result))
    {
        return kStatus_Fail;
    }
    MCUX_CSSL_FP_FUNCTION_CALL_END();

    /* Kick-off ELS PRNG */
    status = ELS_PRNG_KickOff();
    if (status != kStatus_Success)
    {
        return status;
    }

    return kStatus_Success;
}

static status_t ELS_check_key(mcuxClEls_KeyIndex_t keyIdx, mcuxClEls_KeyProp_t *pKeyProp)
{
    /* Check if ELS required keys are available in ELS keystore */
    MCUX_CSSL_FP_FUNCTION_CALL_BEGIN(result, token,
                                     mcuxClEls_GetKeyProperties(keyIdx, pKeyProp)); // Get key properties from the ELS.
    // mcuxClEls_GetKeyProperties is a flow-protected function: Check the protection token and the return value
    if ((MCUX_CSSL_FP_FUNCTION_CALLED(mcuxClEls_GetKeyProperties) != token) || (MCUXCLELS_STATUS_OK != result))
    {
        return kStatus_Fail;
    }
    MCUX_CSSL_FP_FUNCTION_CALL_END();

    return kStatus_Success;
}

static status_t ELS_PRNG_KickOff(void)
{
    mcuxClEls_KeyProp_t key_properties;
    status_t status             = kStatus_Fail;
    mcuxClEls_KeyIndex_t keyIdx = 0U;

    /* Check if PRNG already ready */
    if ((ELS->ELS_STATUS & S50_ELS_STATUS_PRNG_RDY_MASK) == 0u)
    {
        /* Get free ELS key slot */
        for (keyIdx = 0U; keyIdx < MCUXCLELS_KEY_SLOTS; keyIdx++)
        {
            /* find a free key slot in ELS keystore */
            status = ELS_check_key(keyIdx, &key_properties);
            if (status != kStatus_Success)
            {
                return kStatus_SlotUnavailable;
            }

            /* Found free key slot */
            if (key_properties.bits.kactv == 0U)
            {
                break;
            }
        }

        /* Free key slot found */
        if (keyIdx < MCUXCLELS_KEY_SLOTS)
        {
            /* delete empty temp keyslot; */
            /* Even if KDELETE is requested to delete an inactive key, the els entropy level will be raised to low and
             * the PRNG will go ready, */
            MCUX_CSSL_FP_FUNCTION_CALL_PROTECTED(result0, token0, mcuxClEls_KeyDelete_Async(keyIdx));
            if ((token0 != MCUX_CSSL_FP_FUNCTION_CALLED(mcuxClEls_KeyDelete_Async)) ||
                (result0 != MCUXCLELS_STATUS_OK_WAIT))
            {
                return kStatus_Fail;
            }
            /* mcuxClCss_WaitForOperation is a flow-protected function: Check the protection token and the return value
             */
            MCUX_CSSL_FP_FUNCTION_CALL_PROTECTED(result1, token1,
                                                 mcuxClEls_WaitForOperation(MCUXCLELS_ERROR_FLAGS_CLEAR));
            if ((token1 != MCUX_CSSL_FP_FUNCTION_CALLED(mcuxClEls_WaitForOperation)) ||
                (result1 != MCUXCLELS_STATUS_OK))
            {
                return kStatus_Fail;
            }
        }
        else
        {
            return kStatus_SlotUnavailable;
        }
    }
    return kStatus_Success;
}
