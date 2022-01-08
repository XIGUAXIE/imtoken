.class public Lorg/bitcoinj/protocols/payments/PaymentProtocolException$InvalidPkiData;
.super Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
.source "PaymentProtocolException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidPkiData"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/String;)V

    return-void
.end method
