.class public Lorg/bitcoinj/wallet/DefaultKeyChainFactory;
.super Ljava/lang/Object;
.source "DefaultKeyChainFactory.java"

# interfaces
.implements Lorg/bitcoinj/wallet/KeyChainFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeKeyChain(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/crypto/KeyCrypter;Z)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 0

    if-eqz p5, :cond_0

    .line 29
    new-instance p1, Lorg/bitcoinj/wallet/MarriedKeyChain;

    invoke-direct {p1, p3, p4}, Lorg/bitcoinj/wallet/MarriedKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/crypto/KeyCrypter;)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-direct {p1, p3, p4}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/crypto/KeyCrypter;)V

    :goto_0
    return-object p1
.end method

.method public makeWatchingKeyChain(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/crypto/DeterministicKey;ZZ)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 38
    invoke-virtual {p3}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    sget-object p2, Lorg/bitcoinj/wallet/DeterministicKeyChain;->ACCOUNT_ZERO_PATH:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    .line 43
    new-instance p1, Lorg/bitcoinj/wallet/MarriedKeyChain;

    invoke-direct {p1, p3}, Lorg/bitcoinj/wallet/MarriedKeyChain;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-direct {p1, p3, p4}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;Z)V

    :goto_0
    return-object p1

    .line 39
    :cond_1
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expecting account key but found key with path: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p3}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    invoke-static {p3}, Lorg/bitcoinj/crypto/HDUtils;->formatPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
