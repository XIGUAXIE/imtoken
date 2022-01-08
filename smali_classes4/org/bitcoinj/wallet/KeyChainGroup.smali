.class public Lorg/bitcoinj/wallet/KeyChainGroup;
.super Ljava/lang/Object;
.source "KeyChainGroup.java"

# interfaces
.implements Lorg/bitcoinj/wallet/KeyBag;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private basic:Lorg/bitcoinj/wallet/BasicKeyChain;

.field protected final chains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ">;"
        }
    .end annotation
.end field

.field private final currentAddresses:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;",
            "Lorg/bitcoinj/core/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final currentKeys:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation
.end field

.field private keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private lookaheadSize:I

.field private lookaheadThreshold:I

.field private params:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lorg/bitcoinj/core/Utils;->isAndroidRuntime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lorg/bitcoinj/crypto/LinuxSecureRandom;

    invoke-direct {v0}, Lorg/bitcoinj/crypto/LinuxSecureRandom;-><init>()V

    .line 64
    :cond_0
    const-class v0, Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/KeyChainGroup;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 6

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/BasicKeyChain;Ljava/util/List;Ljava/util/EnumMap;Lorg/bitcoinj/crypto/KeyCrypter;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 6

    .line 92
    invoke-static {p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->watch(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/BasicKeyChain;Ljava/util/List;Ljava/util/EnumMap;Lorg/bitcoinj/crypto/KeyCrypter;)V

    return-void
.end method

.method private constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/BasicKeyChain;Ljava/util/List;Ljava/util/EnumMap;Lorg/bitcoinj/crypto/KeyCrypter;)V
    .locals 1
    .param p2    # Lorg/bitcoinj/wallet/BasicKeyChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/EnumMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/bitcoinj/crypto/KeyCrypter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Lorg/bitcoinj/wallet/BasicKeyChain;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ">;",
            "Ljava/util/EnumMap<",
            "Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;",
            "Lorg/bitcoinj/crypto/KeyCrypter;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->lookaheadSize:I

    .line 75
    iput v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->lookaheadThreshold:I

    .line 98
    iput-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    if-nez p2, :cond_0

    .line 99
    new-instance p2, Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-direct {p2}, Lorg/bitcoinj/wallet/BasicKeyChain;-><init>()V

    :cond_0
    iput-object p2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    .line 100
    new-instance p2, Ljava/util/LinkedList;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-direct {p2, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    .line 101
    iput-object p5, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-nez p4, :cond_1

    .line 102
    new-instance p4, Ljava/util/EnumMap;

    const-class p2, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-direct {p4, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    :cond_1
    iput-object p4, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentKeys:Ljava/util/EnumMap;

    .line 105
    new-instance p2, Ljava/util/EnumMap;

    const-class p3, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-direct {p2, p3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentAddresses:Ljava/util/EnumMap;

    .line 106
    invoke-direct {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->maybeLookaheadScripts()V

    .line 108
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->isMarried()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 109
    iget-object p2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentKeys:Ljava/util/EnumMap;

    invoke-virtual {p2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p5

    invoke-direct {p0, p4, p5}, Lorg/bitcoinj/wallet/KeyChainGroup;->makeP2SHOutputScript(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/wallet/DeterministicKeyChain;)Lorg/bitcoinj/script/Script;

    move-result-object p4

    invoke-virtual {p4, p1}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p4

    .line 111
    iget-object p5, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentAddresses:Ljava/util/EnumMap;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Enum;

    invoke-virtual {p5, p3, p4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/DeterministicSeed;)V
    .locals 7

    .line 84
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-direct {v0, p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/BasicKeyChain;Ljava/util/List;Ljava/util/EnumMap;Lorg/bitcoinj/crypto/KeyCrypter;)V

    return-void
.end method

.method private static createCurrentKeysMap(Ljava/util/List;)Ljava/util/EnumMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ">;)",
            "Ljava/util/EnumMap<",
            "Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation

    .line 747
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 749
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getIssuedExternalKeys()I

    move-result v1

    if-lez v1, :cond_0

    .line 757
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;->EXTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v2}, Lorg/bitcoinj/crypto/HDUtils;->concat(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    new-instance v2, Lorg/bitcoinj/crypto/ChildNumber;

    .line 758
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getIssuedExternalKeys()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(I)V

    .line 756
    invoke-static {v1, v2}, Lorg/bitcoinj/crypto/HDUtils;->append(Ljava/util/List;Lorg/bitcoinj/crypto/ChildNumber;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 755
    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    .line 759
    sget-object v2, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->RECEIVE_FUNDS:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getIssuedInternalKeys()I

    move-result v1

    if-lez v1, :cond_1

    .line 765
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;->INTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v2}, Lorg/bitcoinj/crypto/HDUtils;->concat(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    new-instance v2, Lorg/bitcoinj/crypto/ChildNumber;

    .line 766
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getIssuedInternalKeys()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(I)V

    .line 764
    invoke-static {v1, v2}, Lorg/bitcoinj/crypto/HDUtils;->append(Ljava/util/List;Lorg/bitcoinj/crypto/ChildNumber;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 763
    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0

    .line 767
    sget-object v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->CHANGE:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {v0, v1, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static extractFollowingKeychains(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ">;)V"
        }
    .end annotation

    .line 774
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 775
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 776
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 777
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isFollowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 778
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 780
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 781
    instance-of v2, v1, Lorg/bitcoinj/wallet/MarriedKeyChain;

    if-eqz v2, :cond_2

    .line 783
    check-cast v1, Lorg/bitcoinj/wallet/MarriedKeyChain;

    invoke-virtual {v1, v0}, Lorg/bitcoinj/wallet/MarriedKeyChain;->setFollowingKeyChains(Ljava/util/List;)V

    .line 784
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 782
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method static fromProtobufEncrypted(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;)Lorg/bitcoinj/wallet/KeyChainGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;",
            "Lorg/bitcoinj/crypto/KeyCrypter;",
            ")",
            "Lorg/bitcoinj/wallet/KeyChainGroup;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 657
    new-instance v0, Lorg/bitcoinj/wallet/DefaultKeyChainFactory;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/DefaultKeyChainFactory;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->fromProtobufEncrypted(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/wallet/KeyChainFactory;)Lorg/bitcoinj/wallet/KeyChainGroup;

    move-result-object p0

    return-object p0
.end method

.method public static fromProtobufEncrypted(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/wallet/KeyChainFactory;)Lorg/bitcoinj/wallet/KeyChainGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;",
            "Lorg/bitcoinj/crypto/KeyCrypter;",
            "Lorg/bitcoinj/wallet/KeyChainFactory;",
            ")",
            "Lorg/bitcoinj/wallet/KeyChainGroup;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 661
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-static {p1, p2}, Lorg/bitcoinj/wallet/BasicKeyChain;->fromProtobufEncrypted(Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object v2

    .line 663
    invoke-static {p1, p2, p3}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->fromProtobuf(Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/wallet/KeyChainFactory;)Ljava/util/List;

    move-result-object v3

    .line 665
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 666
    invoke-static {v3}, Lorg/bitcoinj/wallet/KeyChainGroup;->createCurrentKeysMap(Ljava/util/List;)Ljava/util/EnumMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    .line 667
    invoke-static {v3}, Lorg/bitcoinj/wallet/KeyChainGroup;->extractFollowingKeychains(Ljava/util/List;)V

    .line 668
    new-instance p1, Lorg/bitcoinj/wallet/KeyChainGroup;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/BasicKeyChain;Ljava/util/List;Ljava/util/EnumMap;Lorg/bitcoinj/crypto/KeyCrypter;)V

    return-object p1
.end method

.method static fromProtobufUnencrypted(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;)Lorg/bitcoinj/wallet/KeyChainGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;)",
            "Lorg/bitcoinj/wallet/KeyChainGroup;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 643
    new-instance v0, Lorg/bitcoinj/wallet/DefaultKeyChainFactory;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/DefaultKeyChainFactory;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->fromProtobufUnencrypted(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/wallet/KeyChainFactory;)Lorg/bitcoinj/wallet/KeyChainGroup;

    move-result-object p0

    return-object p0
.end method

.method public static fromProtobufUnencrypted(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/wallet/KeyChainFactory;)Lorg/bitcoinj/wallet/KeyChainGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;",
            "Lorg/bitcoinj/wallet/KeyChainFactory;",
            ")",
            "Lorg/bitcoinj/wallet/KeyChainGroup;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 647
    invoke-static {p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->fromProtobufUnencrypted(Ljava/util/List;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object v2

    const/4 v0, 0x0

    .line 648
    invoke-static {p1, v0, p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->fromProtobuf(Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/wallet/KeyChainFactory;)Ljava/util/List;

    move-result-object v3

    .line 650
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 651
    invoke-static {v3}, Lorg/bitcoinj/wallet/KeyChainGroup;->createCurrentKeysMap(Ljava/util/List;)Ljava/util/EnumMap;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 652
    :goto_0
    invoke-static {v3}, Lorg/bitcoinj/wallet/KeyChainGroup;->extractFollowingKeychains(Ljava/util/List;)V

    .line 653
    new-instance p1, Lorg/bitcoinj/wallet/KeyChainGroup;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/BasicKeyChain;Ljava/util/List;Ljava/util/EnumMap;Lorg/bitcoinj/crypto/KeyCrypter;)V

    return-object p1
.end method

.method private makeP2SHOutputScript(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/wallet/DeterministicKeyChain;)Lorg/bitcoinj/script/Script;
    .locals 0

    .line 603
    invoke-virtual {p2, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getRedeemData(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    iget-object p1, p1, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript(Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    return-object p1
.end method

.method private maybeLookaheadScripts()V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 119
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAheadScripts()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maybeMarkCurrentAddressAsUsed(Lorg/bitcoinj/core/Address;)V
    .locals 3

    .line 395
    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->isP2SHAddress()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 396
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentAddresses:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 397
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Address;

    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    sget-object v0, Lorg/bitcoinj/wallet/KeyChainGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "Marking P2SH address as used: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    iget-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentAddresses:Ljava/util/EnumMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->freshAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private maybeMarkCurrentKeyAsUsed(Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 3

    .line 409
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentKeys:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 410
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v2, p1}, Lorg/bitcoinj/crypto/DeterministicKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    sget-object v0, Lorg/bitcoinj/wallet/KeyChainGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "Marking key as used: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    iget-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentKeys:Ljava/util/EnumMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->freshKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public addAndActivateHDChain(Lorg/bitcoinj/wallet/DeterministicKeyChain;)V
    .locals 3

    .line 135
    sget-object v0, Lorg/bitcoinj/wallet/KeyChainGroup;->log:Lorg/slf4j/Logger;

    const-string v1, "Creating and activating a new HD chain: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 137
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;

    iget-object v1, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v2, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 138
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->lookaheadSize:I

    if-ltz v0, :cond_1

    .line 139
    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadSize(I)V

    .line 140
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->lookaheadThreshold:I

    if-ltz v0, :cond_2

    .line 141
    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadThreshold(I)V

    .line 142
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V
    .locals 1

    .line 608
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 613
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/wallet/BasicKeyChain;->addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V

    .line 616
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 617
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z
    .locals 2

    .line 319
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not encrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v0

    if-lez v0, :cond_1

    .line 321
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z

    move-result p1

    return p1

    .line 322
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z

    move-result p1

    return p1
.end method

.method public checkPassword(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 314
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not encrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-interface {v0, p1}, Lorg/bitcoinj/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z

    move-result p1

    return p1
.end method

.method public createAndActivateNewHDChain()V
    .locals 2

    .line 126
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Ljava/security/SecureRandom;)V

    .line 127
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->addAndActivateHDChain(Lorg/bitcoinj/wallet/DeterministicKeyChain;)V

    return-void
.end method

.method public currentAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;
    .locals 2

    .line 174
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isMarried()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentAddresses:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Address;

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->freshAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentAddresses:Ljava/util/EnumMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 183
    :cond_1
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->currentKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    return-object p1
.end method

.method public currentKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 2

    .line 157
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isMarried()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentKeys:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/crypto/DeterministicKey;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->freshKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentKeys:Ljava/util/EnumMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Key is not suitable to receive coins for married keychains. Use freshAddress to get P2SH address instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 4

    .line 516
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object v0

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 520
    invoke-virtual {v3, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 522
    iput-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    .line 523
    iput-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    .line 524
    iget-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 525
    iget-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 4

    .line 490
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/wallet/BasicKeyChain;->toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object v0

    .line 494
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v2

    if-nez v2, :cond_0

    .line 498
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->createAndActivateNewHDChain()V

    .line 500
    :cond_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 501
    invoke-virtual {v3, p1, p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    :cond_1
    iput-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    .line 503
    iput-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    .line 504
    iget-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 505
    iget-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 372
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 373
    invoke-virtual {v1, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->findKeyFromPubHash([B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 434
    invoke-virtual {v1, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->findKeyFromPubKey([B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 342
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 344
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->findRedeemDataByScriptHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public freshAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;
    .locals 2

    .line 228
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isMarried()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->freshOutputScript(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 232
    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v1, v0}, Lorg/bitcoinj/core/Address;->fromP2SHScript(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    .line 233
    invoke-direct {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->maybeLookaheadScripts()V

    .line 234
    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->currentAddresses:Ljava/util/EnumMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->freshKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    return-object p1
.end method

.method public freshKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->freshKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;

    return-object p1
.end method

.method public freshKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;",
            "I)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isMarried()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Key is not suitable to receive coins for married keychains. Use freshAddress to get P2SH address instead"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 2

    .line 243
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v0

    if-gtz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->createAndActivateNewHDChain()V

    goto :goto_0

    .line 245
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/KeyChainGroup;->log:Lorg/slf4j/Logger;

    const-string v1, "No HD chain present but random keys are: you probably deserialized an old wallet."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 248
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicUpgradeRequiredException;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/DeterministicUpgradeRequiredException;-><init>()V

    throw v0

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    return-object v0
.end method

.method public getBloomFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;
    .locals 14

    move-object v0, p0

    .line 587
    new-instance v7, Lorg/bitcoinj/core/BloomFilter;

    move-object v1, v7

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/core/BloomFilter;-><init>(IDJ)V

    .line 588
    iget-object v1, v0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v1

    if-lez v1, :cond_0

    .line 589
    iget-object v8, v0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    move v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lorg/bitcoinj/wallet/BasicKeyChain;->getFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/bitcoinj/core/BloomFilter;->merge(Lorg/bitcoinj/core/BloomFilter;)V

    .line 591
    :cond_0
    iget-object v1, v0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    .line 592
    invoke-virtual/range {v8 .. v13}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/bitcoinj/core/BloomFilter;->merge(Lorg/bitcoinj/core/BloomFilter;)V

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method public getBloomFilterElementCount()I
    .locals 3

    .line 579
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->numBloomFilterEntries()I

    move-result v0

    .line 580
    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 581
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->numBloomFilterEntries()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getCombinedKeyLookaheadEpochs()I
    .locals 3

    .line 812
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 813
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyLookaheadEpoch()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getDeterministicKeyChains()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ">;"
        }
    .end annotation

    .line 804
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getEarliestKeyCreationTime()J
    .locals 5

    .line 572
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->getEarliestKeyCreationTime()J

    move-result-wide v0

    .line 573
    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 574
    invoke-virtual {v3}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getEarliestKeyCreationTime()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getImportedKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 562
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    return-object v0
.end method

.method public getLookaheadSize()I
    .locals 2

    .line 274
    iget v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->lookaheadSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getLookaheadSize()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getLookaheadThreshold()I
    .locals 2

    .line 297
    iget v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->lookaheadThreshold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getLookaheadThreshold()I

    move-result v0

    :cond_0
    return v0
.end method

.method public hasKey(Lorg/bitcoinj/core/ECKey;)Z
    .locals 3

    .line 419
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->hasKey(Lorg/bitcoinj/core/ECKey;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 422
    invoke-virtual {v2, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hasKey(Lorg/bitcoinj/core/ECKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public importKeys(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)I"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeys(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public varargs importKeys([Lorg/bitcoinj/core/ECKey;)I
    .locals 0

    .line 310
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->importKeys(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public importKeysAndEncrypt(Ljava/util/List;Lorg/spongycastle/crypto/params/KeyParameter;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            ")I"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not encrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 329
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 330
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 331
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-virtual {v1, v2, p2}, Lorg/bitcoinj/core/ECKey;->encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 332
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot provide already encrypted keys"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_2
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->importKeys(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public isDeterministicUpgradeRequired()Z
    .locals 1

    .line 743
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 530
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMarried()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isMarried()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequiringUpdateAllBloomFilter()Z
    .locals 1

    .line 599
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isWatching()Z
    .locals 5

    .line 540
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->isWatching()Lorg/bitcoinj/wallet/BasicKeyChain$State;

    move-result-object v0

    .line 541
    sget-object v1, Lorg/bitcoinj/wallet/BasicKeyChain$State;->EMPTY:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    .line 542
    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 543
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isWatching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    sget-object v1, Lorg/bitcoinj/wallet/BasicKeyChain$State;->WATCHING:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    goto :goto_0

    .line 546
    :cond_0
    sget-object v1, Lorg/bitcoinj/wallet/BasicKeyChain$State;->REGULAR:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    .line 548
    :cond_1
    :goto_0
    sget-object v2, Lorg/bitcoinj/wallet/BasicKeyChain$State;->EMPTY:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_4

    .line 549
    sget-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->EMPTY:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    if-eq v1, v0, :cond_3

    .line 551
    sget-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->WATCHING:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 550
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty key chain group: cannot answer isWatching() query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_4
    sget-object v2, Lorg/bitcoinj/wallet/BasicKeyChain$State;->EMPTY:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    if-ne v1, v2, :cond_6

    .line 553
    sget-object v1, Lorg/bitcoinj/wallet/BasicKeyChain$State;->WATCHING:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3

    :cond_6
    if-ne v1, v0, :cond_8

    .line 557
    sget-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->WATCHING:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    if-ne v1, v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    return v3

    .line 556
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mix of watching and non-watching keys in wallet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markP2SHAddressAsUsed(Lorg/bitcoinj/core/Address;)V
    .locals 5

    .line 352
    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->isP2SHAddress()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 353
    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, v0, Lorg/bitcoinj/wallet/RedeemData;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 357
    iget-object v2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 358
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->findKeyFromPubKey([B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->markKeyAsUsed(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;

    .line 361
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->maybeMarkCurrentAddressAsUsed(Lorg/bitcoinj/core/Address;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public markPubKeyAsUsed([B)V
    .locals 2

    .line 445
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 447
    invoke-virtual {v1, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->markPubKeyAsUsed([B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    invoke-direct {p0, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->maybeMarkCurrentKeyAsUsed(Lorg/bitcoinj/crypto/DeterministicKey;)V

    :cond_1
    return-void
.end method

.method public markPubKeyHashAsUsed([B)V
    .locals 2

    .line 384
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 386
    invoke-virtual {v1, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->markPubHashAsUsed([B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    invoke-direct {p0, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->maybeMarkCurrentKeyAsUsed(Lorg/bitcoinj/crypto/DeterministicKey;)V

    :cond_1
    return-void
.end method

.method public numKeys()I
    .locals 3

    .line 456
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v0

    .line 457
    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 458
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->numKeys()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public removeEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z
    .locals 2

    .line 622
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 624
    invoke-virtual {v1, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->removeEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z

    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->removeEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z

    move-result p1

    return p1
.end method

.method public removeImportedKey(Lorg/bitcoinj/core/ECKey;)Z
    .locals 1

    .line 467
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    instance-of v0, p1, Lorg/bitcoinj/crypto/DeterministicKey;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 469
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->removeKey(Lorg/bitcoinj/core/ECKey;)Z

    move-result p1

    return p1
.end method

.method public serializeToProtobuf()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->serializeToProtobuf()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 635
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 636
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->serializeToProtobuf()Ljava/util/List;

    move-result-object v2

    .line 637
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public setLookaheadSize(I)V
    .locals 2

    .line 262
    iput p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->lookaheadSize:I

    .line 263
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 264
    invoke-virtual {v1, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLookaheadThreshold(I)V
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 287
    invoke-virtual {v1, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadThreshold(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/BasicKeyChain;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 793
    sget-object v2, Lorg/bitcoinj/core/ECKey;->AGE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 794
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 795
    iget-object v3, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2, p1, v0, v3}, Lorg/bitcoinj/core/ECKey;->formatKeyWithAddress(ZLjava/lang/StringBuilder;Lorg/bitcoinj/core/NetworkParameters;)V

    goto :goto_0

    .line 797
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 798
    iget-object v3, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2, p1, v3}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toString(ZLorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 799
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public upgradeToDeterministic(JLorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 5
    .param p3    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword;,
            Lorg/bitcoinj/wallet/AllRandomKeysRotating;
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 690
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 693
    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    const-wide/16 v3, 0x1

    sub-long/2addr p1, v3

    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/wallet/BasicKeyChain;->findOldestKeyAfter(J)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 697
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 713
    invoke-virtual {p1, p3}, Lorg/bitcoinj/core/ECKey;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    goto :goto_2

    .line 711
    :cond_2
    new-instance p1, Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword;

    invoke-direct {p1}, Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword;-><init>()V

    throw p1

    :cond_3
    if-nez p3, :cond_8

    .line 718
    :goto_2
    iget-object p2, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 719
    sget-object p2, Lorg/bitcoinj/wallet/KeyChainGroup;->log:Lorg/slf4j/Logger;

    const-string v0, "Auto-upgrading pre-HD wallet to HD!"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 721
    :cond_4
    sget-object p2, Lorg/bitcoinj/wallet/KeyChainGroup;->log:Lorg/slf4j/Logger;

    const-string v0, "Wallet with existing HD chain is being re-upgraded due to change in key rotation time."

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 723
    :goto_3
    sget-object p2, Lorg/bitcoinj/wallet/KeyChainGroup;->log:Lorg/slf4j/Logger;

    iget-object v0, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    const-string v3, "Instantiating new HD chain using oldest non-rotating private key (address: {})"

    invoke-interface {p2, v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 724
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getSecretBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 726
    array-length v0, p2

    const/16 v3, 0x10

    if-lt v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 730
    invoke-static {p2, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 731
    array-length v0, p2

    if-ne v0, v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 733
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v1

    const-string p1, ""

    invoke-direct {v0, p2, p1, v1, v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>([BLjava/lang/String;J)V

    if-eqz p3, :cond_7

    .line 735
    iget-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->basic:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-virtual {v0, p1, p3}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    .line 737
    :cond_7
    iget-object p1, p0, Lorg/bitcoinj/wallet/KeyChainGroup;->chains:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 715
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AES Key was provided but wallet is not encrypted."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 695
    :cond_9
    new-instance p1, Lorg/bitcoinj/wallet/AllRandomKeysRotating;

    invoke-direct {p1}, Lorg/bitcoinj/wallet/AllRandomKeysRotating;-><init>()V

    throw p1
.end method
