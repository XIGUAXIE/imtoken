.class public Lorg/bitcoinj/wallet/DecryptingKeyBag;
.super Ljava/lang/Object;
.source "DecryptingKeyBag.java"

# interfaces
.implements Lorg/bitcoinj/wallet/KeyBag;


# instance fields
.field protected final aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

.field protected final target:Lorg/bitcoinj/wallet/KeyBag;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/wallet/KeyBag;Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 0
    .param p2    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/KeyBag;

    iput-object p1, p0, Lorg/bitcoinj/wallet/DecryptingKeyBag;->target:Lorg/bitcoinj/wallet/KeyBag;

    .line 40
    iput-object p2, p0, Lorg/bitcoinj/wallet/DecryptingKeyBag;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    return-void
.end method

.method private maybeDecrypt(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/ECKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lorg/bitcoinj/wallet/DecryptingKeyBag;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/ECKey;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;

    invoke-direct {p1}, Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;-><init>()V

    throw p1

    :cond_2
    return-object p1
.end method

.method private maybeDecrypt(Lorg/bitcoinj/wallet/RedeemData;)Lorg/bitcoinj/wallet/RedeemData;
    .locals 3

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p1, Lorg/bitcoinj/wallet/RedeemData;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 59
    invoke-direct {p0, v2}, Lorg/bitcoinj/wallet/DecryptingKeyBag;->maybeDecrypt(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p1, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    invoke-static {v0, p1}, Lorg/bitcoinj/wallet/RedeemData;->of(Ljava/util/List;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/bitcoinj/wallet/DecryptingKeyBag;->target:Lorg/bitcoinj/wallet/KeyBag;

    invoke-interface {v0, p1}, Lorg/bitcoinj/wallet/KeyBag;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DecryptingKeyBag;->maybeDecrypt(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    return-object p1
.end method

.method public findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/bitcoinj/wallet/DecryptingKeyBag;->target:Lorg/bitcoinj/wallet/KeyBag;

    invoke-interface {v0, p1}, Lorg/bitcoinj/wallet/KeyBag;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DecryptingKeyBag;->maybeDecrypt(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    return-object p1
.end method

.method public findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/bitcoinj/wallet/DecryptingKeyBag;->target:Lorg/bitcoinj/wallet/KeyBag;

    invoke-interface {v0, p1}, Lorg/bitcoinj/wallet/KeyBag;->findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DecryptingKeyBag;->maybeDecrypt(Lorg/bitcoinj/wallet/RedeemData;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    return-object p1
.end method
