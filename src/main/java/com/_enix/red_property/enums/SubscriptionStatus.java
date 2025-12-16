package com._enix.red_property.enums;

public enum SubscriptionStatus {
    ACTIVE,        // Currently valid
    PENDING,       // Created but not yet started (e.g. payment pending)
    EXPIRED,       // End date passed
    CANCELLED,     // Cancelled by agent or admin
    SUSPENDED      // Suspended due to violation or non-payment
}
