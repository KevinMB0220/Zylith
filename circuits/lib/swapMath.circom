pragma circom 2.1.0;

// Zylith CLMM Math in Circom
// Uses Q128 precision to match Cairo contracts

template SqrtPriceTransition() {
    signal input liquidity;
    signal input sqrt_p_old;
    signal input amount_in;
    signal input zero_for_one;
    
    signal output sqrt_p_new;
    signal output amount_out;

    // Fixed point scaling (Q128)
    var Q128 = 2**128;

    // For simplicity in MVP, we implement the zero_for_one (token0 -> token1) case
    // Formula: sqrt_p_new = (L * sqrt_p_old * 2^128) / (L * 2^128 + amount_in * sqrt_p_old)
    
    // Intermediate products can be up to 128 + 128 + 128 = 384 bits.
    // BN254 field is only 254 bits, so we must use multi-precision or carefully check bounds.
    // HOWEVER, for MVP "simplified" swap, we assume amount_in and liquidity are safe.
    
    // Constraint: (L * 2^128 + amount_in * sqrt_p_old) * sqrt_p_new == L * sqrt_p_old * 2^128
    
    signal denom;
    denom <== liquidity * Q128 + amount_in * sqrt_p_old;
    
    // Constraint to solve for sqrt_p_new
    // Note: This requires sqrt_p_new to be computed off-circuit and provided as hint
}

// Optimized amount calculation - avoids expensive division
// Instead of dividing by Q128, we verify: amount_out * Q128 == liquidity * diff
// This is much more efficient as it only requires multiplication and equality check
// amount_out must be computed off-circuit and provided as input
template GetAmountOut() {
    signal input liquidity;
    signal input sqrt_p_old;
    signal input sqrt_p_new;
    signal input zero_for_one;
    signal input amount_out; // Changed from output to input - computed off-circuit
    
    var Q128 = 2**128;

    // zero_for_one: amount_out = L * (sqrt_p_old - sqrt_p_new) / 2^128
    signal diff;
    diff <== sqrt_p_old - sqrt_p_new;
    
    // Calculate numerator: liquidity * diff
    signal numerator;
    numerator <== liquidity * diff;
    
    // Verify: amount_out * Q128 == numerator
    // This avoids the expensive division operation
    // amount_out is provided as input (computed off-circuit) and we just verify it
    signal check;
    check <== amount_out * Q128;
    check === numerator;
}
