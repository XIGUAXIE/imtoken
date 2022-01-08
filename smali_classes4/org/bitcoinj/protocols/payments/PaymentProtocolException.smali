.class public Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
.super Ljava/lang/Exception;
.source "PaymentProtocolException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPkiData;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPkiType;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidNetwork;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidVersion;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidOutputs;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentURL;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPaymentRequestURL;,
        Lorg/bitcoinj/protocols/payments/PaymentProtocolException$Expired;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
