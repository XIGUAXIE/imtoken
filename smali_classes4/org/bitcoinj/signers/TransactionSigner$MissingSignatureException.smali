.class public Lorg/bitcoinj/signers/TransactionSigner$MissingSignatureException;
.super Ljava/lang/RuntimeException;
.source "TransactionSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/signers/TransactionSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissingSignatureException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
