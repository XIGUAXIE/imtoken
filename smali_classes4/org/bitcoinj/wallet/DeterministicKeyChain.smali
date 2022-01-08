.class public Lorg/bitcoinj/wallet/DeterministicKeyChain;
.super Ljava/lang/Object;
.source "DeterministicKeyChain.java"

# interfaces
.implements Lorg/bitcoinj/wallet/EncryptableKeyChain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ZERO_PATH:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final BIP44_ACCOUNT_ZERO_PATH:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PASSPHRASE_FOR_MNEMONIC:Ljava/lang/String; = ""

.field public static final EXTERNAL_PATH:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_PATH:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAZY_CALCULATE_LOOKAHEAD:I = -0x1

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

.field private externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

.field private hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

.field private internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

.field private isFollowing:Z

.field private issuedExternalKeys:I

.field private issuedInternalKeys:I

.field private keyLookaheadEpoch:I

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected lookaheadSize:I

.field protected lookaheadThreshold:I

.field private rootKey:Lorg/bitcoinj/crypto/DeterministicKey;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private seed:Lorg/bitcoinj/wallet/DeterministicSeed;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected sigsRequiredToSpend:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    const-class v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->log:Lorg/slf4j/Logger;

    .line 114
    sget-object v0, Lorg/bitcoinj/crypto/ChildNumber;->ZERO_HARDENED:Lorg/bitcoinj/crypto/ChildNumber;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->ACCOUNT_ZERO_PATH:Lcom/google/common/collect/ImmutableList;

    .line 115
    sget-object v0, Lorg/bitcoinj/crypto/ChildNumber;->ZERO:Lorg/bitcoinj/crypto/ChildNumber;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->EXTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;

    .line 116
    sget-object v0, Lorg/bitcoinj/crypto/ChildNumber;->ONE:Lorg/bitcoinj/crypto/ChildNumber;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->INTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;

    .line 117
    sget-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->ACCOUNT_ZERO_PATH:Lcom/google/common/collect/ImmutableList;

    sget-object v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;->EXTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v1}, Lorg/bitcoinj/crypto/HDUtils;->concat(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->EXTERNAL_PATH:Lcom/google/common/collect/ImmutableList;

    .line 118
    sget-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->ACCOUNT_ZERO_PATH:Lcom/google/common/collect/ImmutableList;

    sget-object v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;->INTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v1}, Lorg/bitcoinj/crypto/HDUtils;->concat(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->INTERNAL_PATH:Lcom/google/common/collect/ImmutableList;

    .line 120
    new-instance v0, Lorg/bitcoinj/crypto/ChildNumber;

    const/16 v1, 0x2c

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    sget-object v1, Lorg/bitcoinj/crypto/ChildNumber;->ZERO_HARDENED:Lorg/bitcoinj/crypto/ChildNumber;

    sget-object v2, Lorg/bitcoinj/crypto/ChildNumber;->ZERO_HARDENED:Lorg/bitcoinj/crypto/ChildNumber;

    .line 121
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->BIP44_ACCOUNT_ZERO_PATH:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 6

    .line 275
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v4

    const/16 v2, 0x80

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Ljava/security/SecureRandom;ILjava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;I)V
    .locals 6

    .line 283
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v4

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Ljava/security/SecureRandom;ILjava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;ILjava/lang/String;J)V
    .locals 7

    .line 292
    new-instance v6, Lorg/bitcoinj/wallet/DeterministicSeed;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/security/SecureRandom;ILjava/lang/String;J)V

    invoke-direct {p0, v6}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 3

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeterministicKeyChain"

    .line 102
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 v0, 0x64

    .line 128
    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    .line 132
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->calcDefaultLookaheadThreshold()I

    move-result v0

    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I

    const/4 v0, 0x1

    .line 160
    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->sigsRequiredToSpend:I

    .line 318
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->isPubKeyOnly()Z

    move-result v1

    const-string v2, "Private subtrees not currently supported: if you got this key from DKC.getWatchingKey() then use .dropPrivate().dropParent() on it first."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 319
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "You can only watch an account key currently"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 320
    new-instance v0, Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    .line 322
    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 323
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->addToBasicChain(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 324
    new-instance v0, Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-direct {v0, p1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    .line 325
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->initializeHierarchyUnencrypted(Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bitcoinj/crypto/DeterministicKey;Z)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 335
    iput-boolean p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isFollowing:Z

    return-void
.end method

.method protected constructor <init>(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/wallet/DeterministicKeyChain;)V
    .locals 3

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeterministicKeyChain"

    .line 102
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 v0, 0x64

    .line 128
    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    .line 132
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->calcDefaultLookaheadThreshold()I

    move-result v0

    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I

    const/4 v0, 0x1

    .line 160
    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->sigsRequiredToSpend:I

    .line 383
    iget-object v1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/DeterministicKey;->isEncrypted()Z

    move-result v1

    xor-int/2addr v1, v0

    const-string v2, "Chain already encrypted"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 388
    iget v1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    iput v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    .line 389
    iget v1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    iput v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    .line 391
    iget v1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    iput v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    .line 392
    iget v1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I

    iput v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I

    .line 394
    iget-object v1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/wallet/DeterministicSeed;->encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicSeed;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    .line 395
    new-instance v1, Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-direct {v1, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;-><init>(Lorg/bitcoinj/crypto/KeyCrypter;)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    .line 397
    iget-object v1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lorg/bitcoinj/crypto/DeterministicKey;->encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 398
    new-instance v1, Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-direct {v1, p1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    .line 399
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p1, v1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKey(Lorg/bitcoinj/core/ECKey;)V

    .line 401
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    .line 402
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {p0, p2, p3, p1, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->encryptNonLeaf(Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/wallet/DeterministicKeyChain;Lorg/bitcoinj/crypto/DeterministicKey;Lcom/google/common/collect/ImmutableList;)Lorg/bitcoinj/crypto/DeterministicKey;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->encryptNonLeaf(Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/wallet/DeterministicKeyChain;Lorg/bitcoinj/crypto/DeterministicKey;Lcom/google/common/collect/ImmutableList;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    .line 405
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sget-object v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;->EXTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v2}, Lorg/bitcoinj/crypto/HDUtils;->concat(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->encryptNonLeaf(Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/wallet/DeterministicKeyChain;Lorg/bitcoinj/crypto/DeterministicKey;Lcom/google/common/collect/ImmutableList;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 406
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sget-object v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;->INTERNAL_SUBPATH:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0, v2}, Lorg/bitcoinj/crypto/HDUtils;->concat(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->encryptNonLeaf(Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/wallet/DeterministicKeyChain;Lorg/bitcoinj/crypto/DeterministicKey;Lcom/google/common/collect/ImmutableList;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 410
    iget-object p1, p3, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/ECKey;

    .line 411
    check-cast p2, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 412
    invoke-virtual {p2}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-eq p3, v0, :cond_1

    goto :goto_1

    .line 413
    :cond_1
    iget-object p3, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {p2}, Lorg/bitcoinj/crypto/DeterministicKey;->getParent()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p3, v0, v1, v1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p3

    .line 415
    new-instance v0, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p2}, Lorg/bitcoinj/crypto/DeterministicKey;->dropPrivateBytes()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 416
    iget-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {p2, v0}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->putKey(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 417
    iget-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {p2, v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKey(Lorg/bitcoinj/core/ECKey;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected constructor <init>(Lorg/bitcoinj/wallet/DeterministicSeed;)V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/crypto/KeyCrypter;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/crypto/KeyCrypter;)V
    .locals 3
    .param p2    # Lorg/bitcoinj/crypto/KeyCrypter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeterministicKeyChain"

    .line 102
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 v0, 0x64

    .line 128
    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    .line 132
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->calcDefaultLookaheadThreshold()I

    move-result v0

    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I

    const/4 v0, 0x1

    .line 160
    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->sigsRequiredToSpend:I

    .line 358
    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    .line 359
    new-instance v1, Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-direct {v1, p2}, Lorg/bitcoinj/wallet/BasicKeyChain;-><init>(Lorg/bitcoinj/crypto/KeyCrypter;)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    .line 360
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/DeterministicSeed;->isEncrypted()Z

    move-result p2

    if-nez p2, :cond_1

    .line 361
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/DeterministicSeed;->getSeedBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-static {p2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->createMasterPrivateKey([B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 362
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/DeterministicSeed;->getCreationTimeSeconds()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/bitcoinj/crypto/DeterministicKey;->setCreationTimeSeconds(J)V

    .line 363
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->addToBasicChain(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 364
    new-instance p1, Lorg/bitcoinj/crypto/DeterministicHierarchy;

    iget-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/DeterministicHierarchy;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;)V

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    const/4 p1, 0x1

    .line 365
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    if-gt p1, p2, :cond_0

    .line 366
    iget-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p2, v1, v2, v0}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->addToBasicChain(Lorg/bitcoinj/crypto/DeterministicKey;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 368
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->initializeHierarchyUnencrypted(Lorg/bitcoinj/crypto/DeterministicKey;)V

    :cond_1
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;J)V
    .locals 1

    .line 301
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>([BLjava/lang/String;J)V

    invoke-direct {p0, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;)V

    return-void
.end method

.method private addToBasicChain(Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeys(Ljava/util/List;)I

    return-void
.end method

.method public static builder()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder<",
            "*>;"
        }
    .end annotation

    .line 267
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;-><init>()V

    return-object v0
.end method

.method private calcDefaultLookaheadThreshold()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private checkForBitFlip(Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 5

    .line 510
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getParent()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 511
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;->WITH_INVERSION:Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKeyBytesFromPublic(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;)Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;

    move-result-object v0

    iget-object v0, v0, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;->keyBytes:[B

    .line 512
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKey()[B

    move-result-object p1

    .line 513
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 514
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "Bit-flip check failed: %s vs %s"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private encryptNonLeaf(Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/wallet/DeterministicKeyChain;Lorg/bitcoinj/crypto/DeterministicKey;Lcom/google/common/collect/ImmutableList;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;)",
            "Lorg/bitcoinj/crypto/DeterministicKey;"
        }
    .end annotation

    .line 428
    iget-object p2, p2, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0, v0}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p2

    .line 429
    iget-object p4, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {p4}, Lorg/bitcoinj/wallet/BasicKeyChain;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object p4

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-virtual {p2, p4, p1, p3}, Lorg/bitcoinj/crypto/DeterministicKey;->encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    .line 430
    iget-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {p2, p1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->putKey(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 431
    iget-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {p2, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKey(Lorg/bitcoinj/core/ECKey;)V

    return-object p1
.end method

.method static fromProtobuf(Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;)Ljava/util/List;
    .locals 1
    .param p1    # Lorg/bitcoinj/crypto/KeyCrypter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;",
            "Lorg/bitcoinj/crypto/KeyCrypter;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 769
    new-instance v0, Lorg/bitcoinj/wallet/DefaultKeyChainFactory;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/DefaultKeyChainFactory;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->fromProtobuf(Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/wallet/KeyChainFactory;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static fromProtobuf(Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/wallet/KeyChainFactory;)Ljava/util/List;
    .locals 27
    .param p1    # Lorg/bitcoinj/crypto/KeyCrypter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;",
            "Lorg/bitcoinj/crypto/KeyCrypter;",
            "Lorg/bitcoinj/wallet/KeyChainFactory;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 777
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 784
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 785
    :goto_0
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1a

    .line 786
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bitcoinj/wallet/Protos$Key;

    .line 787
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getType()Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v11

    .line 788
    sget-object v12, Lorg/bitcoinj/wallet/Protos$Key$Type;->DETERMINISTIC_MNEMONIC:Lorg/bitcoinj/wallet/Protos$Key$Type;

    const-wide/16 v17, 0x3e8

    if-ne v11, v12, :cond_8

    if-eqz v5, :cond_1

    if-ltz v6, :cond_0

    const/4 v10, 0x1

    .line 790
    :cond_0
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 791
    invoke-virtual {v5, v6}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadSize(I)V

    .line 792
    invoke-virtual {v5, v7}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setSigsRequiredToSpend(I)V

    .line 793
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead()V

    .line 794
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 797
    :cond_1
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getCreationTimestamp()J

    move-result-wide v10

    div-long v10, v10, v17

    .line 799
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasSecretBytes()Z

    move-result v8

    const-string v12, "Malformed key proto: "

    if-eqz v8, :cond_4

    .line 800
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedDeterministicSeed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 803
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasDeterministicSeed()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 804
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicSeed()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v8

    move-object/from16 v21, v8

    goto :goto_1

    :cond_2
    const/16 v21, 0x0

    .line 806
    :goto_1
    new-instance v8, Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getSecretBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v20

    const-string v22, ""

    move-object/from16 v19, v8

    move-wide/from16 v23, v10

    invoke-direct/range {v19 .. v24}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/lang/String;[BLjava/lang/String;J)V

    goto :goto_3

    .line 801
    :cond_3
    new-instance v0, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_4
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedData()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 808
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasDeterministicSeed()Z

    move-result v8

    if-nez v8, :cond_6

    .line 810
    new-instance v8, Lorg/bitcoinj/crypto/EncryptedData;

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getInitialisationVector()Lcom/google/protobuf/ByteString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v12

    .line 811
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v13

    invoke-direct {v8, v12, v13}, Lorg/bitcoinj/crypto/EncryptedData;-><init>([B[B)V

    .line 813
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedDeterministicSeed()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 814
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedDeterministicSeed()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v9

    .line 815
    new-instance v12, Lorg/bitcoinj/crypto/EncryptedData;

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getInitialisationVector()Lcom/google/protobuf/ByteString;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v13

    .line 816
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v9

    invoke-direct {v12, v13, v9}, Lorg/bitcoinj/crypto/EncryptedData;-><init>([B[B)V

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 818
    :goto_2
    new-instance v9, Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-direct {v9, v8, v12, v10, v11}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Lorg/bitcoinj/crypto/EncryptedData;Lorg/bitcoinj/crypto/EncryptedData;J)V

    move-object v8, v9

    .line 822
    :goto_3
    sget-object v9, Lorg/bitcoinj/wallet/DeterministicKeyChain;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 823
    sget-object v9, Lorg/bitcoinj/wallet/DeterministicKeyChain;->log:Lorg/slf4j/Logger;

    const-string v10, "Deserializing: DETERMINISTIC_MNEMONIC: {}"

    invoke-interface {v9, v10, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 809
    :cond_6
    new-instance v0, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_7
    new-instance v0, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_8
    sget-object v12, Lorg/bitcoinj/wallet/Protos$Key$Type;->DETERMINISTIC_KEY:Lorg/bitcoinj/wallet/Protos$Key$Type;

    if-ne v11, v12, :cond_19

    .line 825
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasDeterministicKey()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 827
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getChainCode()Lcom/google/protobuf/ByteString;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v25

    .line 829
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v15

    .line 830
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getPathList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 831
    new-instance v13, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-direct {v13, v12}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(I)V

    invoke-virtual {v15, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 833
    :cond_9
    new-instance v14, Lorg/bitcoinj/crypto/LazyECPoint;

    sget-object v11, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v11

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v12

    invoke-direct {v14, v11, v12}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    .line 834
    invoke-static {v15}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v26

    .line 840
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getIsFollowing()Z

    move-result v11

    if-eqz v11, :cond_c

    if-eqz v5, :cond_b

    if-ltz v6, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    .line 842
    :goto_5
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 843
    invoke-virtual {v5, v6}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadSize(I)V

    .line 844
    invoke-virtual {v5, v7}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setSigsRequiredToSpend(I)V

    .line 845
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead()V

    .line 846
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v8, 0x0

    :cond_b
    const/16 v16, 0x1

    goto :goto_6

    :cond_c
    const/16 v16, 0x0

    :goto_6
    if-nez v5, :cond_f

    if-nez v16, :cond_d

    .line 854
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-virtual {v5}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isFollowing()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    if-nez v8, :cond_e

    .line 856
    new-instance v13, Lorg/bitcoinj/crypto/DeterministicKey;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v13

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, v14

    invoke-direct/range {v19 .. v24}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 857
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getCreationTimestamp()J

    move-result-wide v11

    div-long v11, v11, v17

    invoke-virtual {v13, v11, v12}, Lorg/bitcoinj/crypto/DeterministicKey;->setCreationTimeSeconds(J)V

    .line 858
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v19, v11

    check-cast v19, Lorg/bitcoinj/wallet/Protos$Key;

    move-object/from16 v11, p2

    move-object v12, v9

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    move-object/from16 v23, v14

    move-object/from16 v14, v20

    move-object/from16 p0, v15

    move/from16 v15, v16

    move/from16 v16, v5

    invoke-interface/range {v11 .. v16}, Lorg/bitcoinj/wallet/KeyChainFactory;->makeWatchingKeyChain(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/crypto/DeterministicKey;ZZ)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v5

    const/4 v11, 0x1

    goto :goto_9

    :cond_e
    move-object/from16 v23, v14

    move-object/from16 p0, v15

    .line 861
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lorg/bitcoinj/wallet/Protos$Key;

    move-object/from16 v11, p2

    move-object v12, v9

    move-object v14, v8

    move-object/from16 v15, p1

    move/from16 v16, v5

    invoke-interface/range {v11 .. v16}, Lorg/bitcoinj/wallet/KeyChainFactory;->makeKeyChain(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/crypto/KeyCrypter;Z)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v5

    .line 862
    iput v2, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    goto :goto_8

    :cond_f
    move-object/from16 v23, v14

    move-object/from16 p0, v15

    :goto_8
    const/4 v11, 0x0

    .line 870
    :goto_9
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_10

    if-nez v11, :cond_10

    .line 871
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bitcoinj/crypto/ChildNumber;

    .line 872
    iget-object v13, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    move-object/from16 v14, p0

    invoke-virtual {v13, v14, v10, v10}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v10

    .line 873
    invoke-virtual {v14, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    move-object/from16 v14, p0

    const/4 v10, 0x0

    .line 876
    :goto_a
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasSecretBytes()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 878
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getSecretBytes()Lcom/google/protobuf/ByteString;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v13

    invoke-direct {v12, v4, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 879
    new-instance v13, Lorg/bitcoinj/crypto/DeterministicKey;

    move-object/from16 v19, v13

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, v23

    move-object/from16 v23, v12

    move-object/from16 v24, v10

    invoke-direct/range {v19 .. v24}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    move-object/from16 v15, p1

    goto :goto_b

    .line 881
    :cond_11
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedData()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 882
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v12

    .line 883
    new-instance v13, Lorg/bitcoinj/crypto/EncryptedData;

    invoke-virtual {v12}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getInitialisationVector()Lcom/google/protobuf/ByteString;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v15

    .line 884
    invoke-virtual {v12}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v12

    invoke-direct {v13, v15, v12}, Lorg/bitcoinj/crypto/EncryptedData;-><init>([B[B)V

    const-string v12, "Encountered an encrypted key but no key crypter provided"

    move-object/from16 v15, p1

    .line 885
    invoke-static {v15, v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    new-instance v12, Lorg/bitcoinj/crypto/DeterministicKey;

    move-object/from16 v19, v12

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, p1

    move-object/from16 v24, v13

    move-object/from16 v25, v10

    invoke-direct/range {v19 .. v25}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/crypto/LazyECPoint;Lorg/bitcoinj/crypto/EncryptedData;Lorg/bitcoinj/crypto/DeterministicKey;)V

    move-object v13, v12

    goto :goto_b

    :cond_12
    move-object/from16 v15, p1

    .line 890
    new-instance v13, Lorg/bitcoinj/crypto/DeterministicKey;

    const/4 v12, 0x0

    move-object/from16 v19, v13

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, v23

    move-object/from16 v23, v12

    move-object/from16 v24, v10

    invoke-direct/range {v19 .. v24}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 893
    :goto_b
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->hasCreationTimestamp()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 894
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getCreationTimestamp()J

    move-result-wide v19

    div-long v2, v19, v17

    invoke-virtual {v13, v2, v3}, Lorg/bitcoinj/crypto/DeterministicKey;->setCreationTimeSeconds(J)V

    .line 895
    :cond_13
    sget-object v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 896
    sget-object v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;->log:Lorg/slf4j/Logger;

    const-string v3, "Deserializing: DETERMINISTIC_KEY: {}"

    invoke-interface {v2, v3, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    if-nez v11, :cond_17

    .line 902
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_15

    .line 904
    iget-object v2, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    if-nez v2, :cond_17

    .line 905
    iput-object v13, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 906
    new-instance v2, Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-direct {v2, v13}, Lorg/bitcoinj/crypto/DeterministicHierarchy;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;)V

    iput-object v2, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    goto :goto_c

    .line 908
    :cond_15
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v5}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_17

    .line 909
    invoke-virtual {v13}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/crypto/ChildNumber;->num()I

    move-result v2

    if-nez v2, :cond_16

    .line 910
    iput-object v13, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 911
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getIssuedSubkeys()I

    move-result v2

    iput v2, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    .line 912
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getLookaheadSize()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 913
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getSigsRequiredToSpend()I

    move-result v3

    move v6, v2

    move v7, v3

    goto :goto_c

    .line 914
    :cond_16
    invoke-virtual {v13}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/crypto/ChildNumber;->num()I

    move-result v2

    if-ne v2, v4, :cond_17

    .line 915
    iput-object v13, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 916
    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$DeterministicKey;->getIssuedSubkeys()I

    move-result v2

    iput v2, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    .line 920
    :cond_17
    :goto_c
    iget-object v2, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {v2, v13}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->putKey(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 921
    iget-object v2, v5, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v2, v13}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKey(Lorg/bitcoinj/core/ECKey;)V

    goto :goto_e

    .line 826
    :cond_18
    new-instance v0, Lorg/bitcoinj/wallet/UnreadableWalletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deterministic key missing extra data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/bitcoinj/wallet/Protos$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_d
    move-object/from16 v15, p1

    :goto_e
    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_1a
    if-eqz v5, :cond_1c

    if-ltz v6, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v4, 0x0

    .line 925
    :goto_f
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 926
    invoke-virtual {v5, v6}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadSize(I)V

    .line 927
    invoke-virtual {v5, v7}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setSigsRequiredToSpend(I)V

    .line 928
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead()V

    .line 929
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    return-object v0
.end method

.method private initializeHierarchyUnencrypted(Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 3

    .line 438
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/crypto/ChildNumber;->ZERO:Lorg/bitcoinj/crypto/ChildNumber;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->deriveChild(Ljava/util/List;ZZLorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 439
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/crypto/ChildNumber;->ONE:Lorg/bitcoinj/crypto/ChildNumber;

    invoke-virtual {p1, v0, v2, v2, v1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->deriveChild(Ljava/util/List;ZZLorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 440
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->addToBasicChain(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 441
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->addToBasicChain(Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-void
.end method

.method private maybeLookAhead(Lorg/bitcoinj/crypto/DeterministicKey;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            "I)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1144
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getLookaheadSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getLookaheadThreshold()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead(Lorg/bitcoinj/crypto/DeterministicKey;III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private maybeLookAhead(Lorg/bitcoinj/crypto/DeterministicKey;III)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            "III)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1155
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->getNumChildren(Lcom/google/common/collect/ImmutableList;)I

    move-result v0

    add-int v1, p2, p3

    add-int/2addr v1, p4

    sub-int/2addr v1, v0

    if-gt v1, p4, :cond_0

    .line 1159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1161
    :cond_0
    sget-object v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 1162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPathAsString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    const/4 p2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p2

    const/4 p2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p2

    const/4 p2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p2

    const-string p2, "{} keys needed for {} = {} issued + {} lookahead size + {} lookahead threshold - {} num children"

    .line 1161
    invoke-interface {v2, p2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1165
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object p3

    :goto_0
    if-ge v5, v1, :cond_1

    .line 1168
    invoke-static {p1, v0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveThisOrNextChildKey(Lorg/bitcoinj/crypto/DeterministicKey;I)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p4

    .line 1169
    invoke-virtual {p4}, Lorg/bitcoinj/crypto/DeterministicKey;->dropPrivateBytes()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p4

    .line 1170
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {v0, p4}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->putKey(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 1171
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    invoke-virtual {p4}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object p4

    invoke-virtual {p4}, Lorg/bitcoinj/crypto/ChildNumber;->num()I

    move-result p4

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1174
    :cond_1
    invoke-virtual {p3}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 1175
    sget-object p1, Lorg/bitcoinj/wallet/DeterministicKeyChain;->log:Lorg/slf4j/Logger;

    const-string p4, "Took {}"

    invoke-interface {p1, p4, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method

.method static serializeSeedEncryptableItem(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/wallet/Protos$Key$Builder;)V
    .locals 2

    .line 1271
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->getEncryptedSeedData()Lorg/bitcoinj/crypto/EncryptedData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1272
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->getEncryptedSeedData()Lorg/bitcoinj/crypto/EncryptedData;

    move-result-object v0

    .line 1273
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedDeterministicSeedBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p1

    iget-object v1, v0, Lorg/bitcoinj/crypto/EncryptedData;->encryptedBytes:[B

    .line 1274
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->setEncryptedPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p1

    iget-object v0, v0, Lorg/bitcoinj/crypto/EncryptedData;->initialisationVector:[B

    .line 1275
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->setInitialisationVector(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    .line 1277
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object p0

    sget-object p1, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_1

    .line 1279
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->getSeedBytes()[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1281
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setDeterministicSeed(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    :cond_2
    :goto_1
    return-void
.end method

.method public static watch(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 1

    .line 351
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-direct {v0, p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-object v0
.end method

.method public static watchAndFollow(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 2

    .line 344
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;Z)V

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V
    .locals 1

    .line 676
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/wallet/BasicKeyChain;->addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z
    .locals 4

    .line 1013
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Can\'t check password for a watching chain"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1014
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "Key chain not encrypted"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1017
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/crypto/DeterministicKey;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->rootKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result p1
    :try_end_0
    .catch Lorg/bitcoinj/crypto/KeyCrypterException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2
.end method

.method public checkPassword(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1006
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Key chain not encrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1008
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bitcoinj/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z

    move-result p1

    return p1
.end method

.method public findKeyFromPubHash([B)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 546
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public findKeyFromPubKey([B)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 555
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public findRedeemDataByScriptHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/RedeemData;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected formatAddresses(ZLorg/bitcoinj/core/NetworkParameters;Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    .line 1340
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeys(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 1341
    invoke-virtual {v1, p1, p3, p2}, Lorg/bitcoinj/core/ECKey;->formatKeyWithAddress(ZLjava/lang/StringBuilder;Lorg/bitcoinj/core/NetworkParameters;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public freshOutputScript(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/script/Script;
    .locals 0

    .line 1314
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected getAccountPath()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation

    .line 423
    sget-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->ACCOUNT_ZERO_PATH:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getEarliestKeyCreationTime()J
    .locals 2

    .line 668
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicSeed;->getCreationTimeSeconds()J

    move-result-wide v0

    return-wide v0

    .line 671
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getWatchingKey()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getCreationTimeSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;
    .locals 7

    .line 1043
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1045
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->numBloomFilterEntries()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1046
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead()V

    .line 1047
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/bitcoinj/wallet/BasicKeyChain;->getFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    iget-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getIssuedExternalKeys()I
    .locals 2

    .line 1188
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1190
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getIssuedInternalKeys()I
    .locals 2

    .line 1201
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1203
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getIssuedReceiveKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    .line 1244
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeys(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v2}, Lorg/bitcoinj/crypto/DeterministicKey;->getParent()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1247
    iget-object v3, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v3, v2}, Lorg/bitcoinj/crypto/DeterministicKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1248
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/ECKey;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    const/4 v0, 0x1

    .line 447
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;

    return-object p1
.end method

.method protected getKeyByPath(Ljava/util/List;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;)",
            "Lorg/bitcoinj/crypto/DeterministicKey;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 612
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    return-object p1
.end method

.method public getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;Z)",
            "Lorg/bitcoinj/crypto/DeterministicKey;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    return-object p1
.end method

.method protected varargs getKeyByPath([Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 0

    .line 607
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    return-object p1
.end method

.method public getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1026
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    return-object v0
.end method

.method public getKeyLookaheadEpoch()I
    .locals 2

    .line 1290
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1292
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->keyLookaheadEpoch:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;
    .locals 7
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 453
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 454
    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 458
    :try_start_0
    sget-object v2, Lorg/bitcoinj/wallet/DeterministicKeyChain$1;->$SwitchMap$org$bitcoinj$wallet$KeyChain$KeyPurpose:[I

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 471
    :cond_2
    :goto_1
    iget p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    .line 473
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    goto :goto_2

    .line 465
    :cond_3
    iget p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    .line 467
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 489
    :goto_2
    invoke-direct {p0, v0, p1, v1, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead(Lorg/bitcoinj/crypto/DeterministicKey;III)Ljava/util/List;

    move-result-object v2

    .line 490
    iget-object v3, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v3, v2}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeys(Ljava/util/List;)I

    .line 491
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p2, :cond_4

    .line 493
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    new-instance v5, Lorg/bitcoinj/crypto/ChildNumber;

    sub-int v6, p1, p2

    add-int/2addr v6, v3

    invoke-direct {v5, v6, v1}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-static {v4, v5}, Lorg/bitcoinj/crypto/HDUtils;->append(Ljava/util/List;Lorg/bitcoinj/crypto/ChildNumber;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 494
    iget-object v5, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {v5, v4, v1, v1}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v4

    .line 500
    invoke-direct {p0, v4}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->checkForBitFlip(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 501
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 505
    :cond_4
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method getKeys(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->getKeys()Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_5

    .line 1224
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    .line 1225
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 1227
    check-cast v2, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 1228
    invoke-virtual {v2}, Lorg/bitcoinj/crypto/DeterministicKey;->getParent()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1230
    :cond_0
    invoke-virtual {v2}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-gt v4, p1, :cond_1

    goto :goto_0

    .line 1231
    :cond_1
    iget-object v4, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v3, v4}, Lorg/bitcoinj/crypto/DeterministicKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/crypto/ChildNumber;->i()I

    move-result v4

    iget v5, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    if-lt v4, v5, :cond_2

    goto :goto_0

    .line 1232
    :cond_2
    iget-object v4, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v3, v4}, Lorg/bitcoinj/crypto/DeterministicKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/crypto/ChildNumber;->i()I

    move-result v3

    iget v4, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    if-lt v3, v4, :cond_3

    goto :goto_0

    .line 1233
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    return-object v0
.end method

.method public getLeafKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation

    .line 1257
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1258
    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeys(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 1259
    check-cast v2, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 1260
    invoke-virtual {v2}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1261
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 1264
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getLookaheadSize()I
    .locals 2

    .line 1062
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1064
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getLookaheadThreshold()I
    .locals 2

    .line 1111
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1113
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I

    iget v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1117
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 1115
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1117
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMnemonicCode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 692
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 696
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicSeed;->getMnemonicCode()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getRedeemData(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/RedeemData;
    .locals 0

    .line 1309
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getSeed()Lorg/bitcoinj/wallet/DeterministicSeed;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1212
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1214
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getSigsRequiredToSpend()I
    .locals 1

    .line 1354
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->sigsRequiredToSpend:I

    return v0
.end method

.method public getWatchingKey()Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    .line 631
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public hasKey(Lorg/bitcoinj/core/ECKey;)Z
    .locals 1

    .line 597
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 599
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->hasKey(Lorg/bitcoinj/core/ECKey;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public isFollowing()Z
    .locals 1

    .line 706
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isFollowing:Z

    return v0
.end method

.method public isMarried()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWatching()Z
    .locals 1

    .line 636
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getWatchingKey()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->isWatching()Z

    move-result v0

    return v0
.end method

.method protected makeKeyChainFromSeed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 1

    .line 1001
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-direct {v0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;)V

    return-object v0
.end method

.method public markKeyAsUsed(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 3

    .line 527
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/ChildNumber;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 529
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getParent()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    if-ne v1, v2, :cond_0

    .line 530
    iget v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    if-ge v1, v0, :cond_1

    .line 531
    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    .line 532
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead()V

    goto :goto_0

    .line 534
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getParent()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    if-ne v1, v2, :cond_1

    .line 535
    iget v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    if-ge v1, v0, :cond_1

    .line 536
    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    .line 537
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead()V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public markPubHashAsUsed([B)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 567
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 569
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz p1, :cond_0

    .line 571
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->markKeyAsUsed(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public markPubKeyAsUsed([B)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 584
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 586
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->markKeyAsUsed(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public maybeLookAhead()V
    .locals 3

    .line 1126
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1128
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    iget v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    invoke-direct {p0, v0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead(Lorg/bitcoinj/crypto/DeterministicKey;I)Ljava/util/List;

    move-result-object v0

    .line 1129
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    iget v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    invoke-direct {p0, v1, v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead(Lorg/bitcoinj/crypto/DeterministicKey;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1130
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1138
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1132
    :cond_0
    :try_start_1
    iget v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->keyLookaheadEpoch:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->keyLookaheadEpoch:I

    .line 1136
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v1, v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeys(Ljava/util/List;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1138
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public maybeLookAheadScripts()V
    .locals 0

    return-void
.end method

.method public numBloomFilterEntries()I
    .locals 1

    .line 1038
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->numKeys()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public numKeys()I
    .locals 2

    .line 643
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead()V

    .line 646
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public numLeafKeysIssued()I
    .locals 2

    .line 658
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 660
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    iget v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 662
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public removeEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z
    .locals 1

    .line 686
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->removeEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z

    move-result p1

    return p1
.end method

.method protected serializeMyselfToProtobuf()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .line 730
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v1, :cond_0

    .line 732
    invoke-static {v1}, Lorg/bitcoinj/wallet/BasicKeyChain;->serializeEncryptableItem(Lorg/bitcoinj/crypto/EncryptableItem;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v1

    .line 733
    sget-object v2, Lorg/bitcoinj/wallet/Protos$Key$Type;->DETERMINISTIC_MNEMONIC:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 734
    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-static {v2, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->serializeSeedEncryptableItem(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/wallet/Protos$Key$Builder;)V

    .line 735
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/BasicKeyChain;->serializeToEditableProtobufs()Ljava/util/Map;

    move-result-object v1

    .line 738
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 739
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 740
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 741
    sget-object v4, Lorg/bitcoinj/wallet/Protos$Key$Type;->DETERMINISTIC_KEY:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {v2, v4}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 742
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getDeterministicKeyBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    move-result-object v4

    .line 743
    invoke-virtual {v3}, Lorg/bitcoinj/crypto/DeterministicKey;->getChainCode()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setChainCode(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 744
    invoke-virtual {v3}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bitcoinj/crypto/ChildNumber;

    .line 745
    invoke-virtual {v6}, Lorg/bitcoinj/crypto/ChildNumber;->i()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->addPath(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    goto :goto_1

    .line 746
    :cond_1
    iget-object v5, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->externalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v3, v5}, Lorg/bitcoinj/crypto/DeterministicKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 747
    iget v5, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    invoke-virtual {v4, v5}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setIssuedSubkeys(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 748
    iget v5, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    invoke-virtual {v4, v5}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setLookaheadSize(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 749
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getSigsRequiredToSpend()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setSigsRequiredToSpend(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    goto :goto_2

    .line 750
    :cond_2
    iget-object v5, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->internalParentKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v3, v5}, Lorg/bitcoinj/crypto/DeterministicKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 751
    iget v5, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    invoke-virtual {v4, v5}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setIssuedSubkeys(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 752
    iget v5, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    invoke-virtual {v4, v5}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setLookaheadSize(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 753
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getSigsRequiredToSpend()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setSigsRequiredToSpend(I)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 756
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->isFollowing()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    .line 757
    invoke-virtual {v4, v5}, Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;->setIsFollowing(Z)Lorg/bitcoinj/wallet/Protos$DeterministicKey$Builder;

    .line 759
    :cond_4
    invoke-virtual {v3}, Lorg/bitcoinj/crypto/DeterministicKey;->getParent()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 761
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->clearCreationTimestamp()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 763
    :cond_5
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public serializeToProtobuf()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .line 717
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 720
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->serializeMyselfToProtobuf()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setLookaheadSize(I)V
    .locals 2

    .line 1078
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1080
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I

    invoke-direct {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->calcDefaultLookaheadThreshold()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1081
    :goto_0
    iput p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    if-eqz v0, :cond_1

    .line 1083
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->calcDefaultLookaheadThreshold()I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setLookaheadThreshold(I)V
    .locals 1

    .line 1095
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1097
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    if-ge p1, v0, :cond_0

    .line 1099
    iput p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadThreshold:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    iget-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1098
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold larger or equal to the lookaheadSize"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 1101
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSigsRequiredToSpend(I)V
    .locals 0

    .line 1346
    iput p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->sigsRequiredToSpend:I

    return-void
.end method

.method public toDecrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 3

    .line 958
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 960
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Chain not encrypted"

    .line 961
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 962
    invoke-interface {v0, p1}, Lorg/bitcoinj/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    .line 963
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 5

    .line 968
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Key chain not encrypted"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 969
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "Can\'t decrypt a watching chain"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 970
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicSeed;->isEncrypted()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 972
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3, p1}, Lorg/bitcoinj/wallet/DeterministicSeed;->decrypt(Lorg/bitcoinj/crypto/KeyCrypter;Ljava/lang/String;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicSeed;

    move-result-object p1

    .line 973
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->makeKeyChainFromSeed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p1

    .line 975
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getWatchingKey()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getWatchingKey()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 977
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    iput v0, p1, Lorg/bitcoinj/wallet/DeterministicKeyChain;->lookaheadSize:I

    .line 980
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 981
    check-cast v1, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 982
    invoke-virtual {v1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_2

    .line 983
    :cond_2
    invoke-virtual {v1}, Lorg/bitcoinj/crypto/DeterministicKey;->isEncrypted()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 984
    iget-object v3, p1, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/DeterministicKey;->getParent()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v4}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v2}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->get(Ljava/util/List;ZZ)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v3

    .line 986
    new-instance v4, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/DeterministicKey;->dropPrivateBytes()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 987
    iget-object v1, p1, Lorg/bitcoinj/wallet/DeterministicKeyChain;->hierarchy:Lorg/bitcoinj/crypto/DeterministicHierarchy;

    invoke-virtual {v1, v4}, Lorg/bitcoinj/crypto/DeterministicHierarchy;->putKey(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 988
    iget-object v1, p1, Lorg/bitcoinj/wallet/DeterministicKeyChain;->basicKeyChain:Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-virtual {v1, v4}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKey(Lorg/bitcoinj/core/ECKey;)V

    goto :goto_2

    .line 990
    :cond_3
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    iput v0, p1, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedExternalKeys:I

    .line 991
    iget v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    iput v0, p1, Lorg/bitcoinj/wallet/DeterministicKeyChain;->issuedInternalKeys:I

    return-object p1

    .line 976
    :cond_4
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string v0, "Provided AES key is wrong"

    invoke-direct {p1, v0}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic toDecrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toDecrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public toEncrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 3

    .line 942
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 944
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "Attempt to encrypt a watching chain."

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 945
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicSeed;->isEncrypted()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 946
    new-instance v0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;

    invoke-direct {v0}, Lorg/bitcoinj/crypto/KeyCrypterScrypt;-><init>()V

    .line 947
    invoke-interface {v0, p1}, Lorg/bitcoinj/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    .line 948
    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 1

    .line 953
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-direct {v0, p1, p2, p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/wallet/DeterministicKeyChain;)V

    return-object v0
.end method

.method public bridge synthetic toEncrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toEncrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public toString(ZLorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;
    .locals 10

    .line 1318
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getWatchingKey()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    const-string v3, "]\n"

    const-wide/16 v4, 0x3e8

    const-string v6, "  ["

    const/16 v7, 0xa

    if-eqz v2, :cond_2

    .line 1321
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicSeed;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Seed is encrypted\n"

    .line 1322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1324
    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicSeed;->getMnemonicCode()Ljava/util/List;

    move-result-object v2

    const-string v8, "Seed as words: "

    .line 1325
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/bitcoinj/core/Utils;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Seed as hex:   "

    .line 1326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicSeed;->toHexString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v2, "Seed birthday: "

    .line 1328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicSeed;->getCreationTimeSeconds()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    .line 1329
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicSeed;->getCreationTimeSeconds()J

    move-result-wide v8

    mul-long v8, v8, v4

    invoke-static {v8, v9}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "Key birthday:  "

    .line 1331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getCreationTimeSeconds()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getCreationTimeSeconds()J

    move-result-wide v8

    mul-long v8, v8, v4

    invoke-static {v8, v9}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, "Key to watch:  "

    .line 1334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Lorg/bitcoinj/crypto/DeterministicKey;->serializePubB58(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1335
    invoke-virtual {p0, p1, p2, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->formatAddresses(ZLorg/bitcoinj/core/NetworkParameters;Ljava/lang/StringBuilder;)V

    .line 1336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
