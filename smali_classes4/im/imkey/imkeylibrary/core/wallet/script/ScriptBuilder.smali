.class public Lim/imkey/imkeylibrary/core/wallet/script/ScriptBuilder;
.super Ljava/lang/Object;
.source "ScriptBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;[B)Lorg/bitcoinj/script/Script;
    .locals 1
    .param p0    # Lorg/bitcoinj/crypto/TransactionSignature;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 16
    :goto_0
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method
