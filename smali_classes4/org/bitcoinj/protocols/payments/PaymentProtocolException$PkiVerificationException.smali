.class public Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;
.super Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
.source "PaymentProtocolException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/payments/PaymentProtocolException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkiVerificationException"
.end annotation


# instance fields
.field public certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/Exception;)V

    .line 104
    iput-object p2, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;->certificates:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException;-><init>(Ljava/lang/String;)V

    return-void
.end method
