.class public abstract Lorg/bitcoinj/signers/StatelessTransactionSigner;
.super Ljava/lang/Object;
.source "StatelessTransactionSigner.java"

# interfaces
.implements Lorg/bitcoinj/signers/TransactionSigner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)V
    .locals 0

    return-void
.end method

.method public serialize()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
