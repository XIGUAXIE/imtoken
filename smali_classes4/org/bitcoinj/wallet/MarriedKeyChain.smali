.class public Lorg/bitcoinj/wallet/MarriedKeyChain;
.super Lorg/bitcoinj/wallet/DeterministicKeyChain;
.source "MarriedKeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;
    }
.end annotation


# instance fields
.field private followingKeyChains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ">;"
        }
    .end annotation
.end field

.field private marriedKeysRedeemData:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/google/protobuf/ByteString;",
            "Lorg/bitcoinj/wallet/RedeemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/security/SecureRandom;ILjava/lang/String;J)V
    .locals 0

    .line 131
    invoke-direct/range {p0 .. p5}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Ljava/security/SecureRandom;ILjava/lang/String;J)V

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/SecureRandom;ILjava/lang/String;JLorg/bitcoinj/wallet/MarriedKeyChain$1;)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p5}, Lorg/bitcoinj/wallet/MarriedKeyChain;-><init>(Ljava/security/SecureRandom;ILjava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;Z)V

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>(Lorg/bitcoinj/wallet/DeterministicSeed;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;)V

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/crypto/KeyCrypter;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/crypto/KeyCrypter;)V

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/wallet/MarriedKeyChain$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/MarriedKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;)V

    return-void
.end method

.method private constructor <init>([BLjava/lang/String;J)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>([BLjava/lang/String;J)V

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>([BLjava/lang/String;JLorg/bitcoinj/wallet/MarriedKeyChain$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/wallet/MarriedKeyChain;-><init>([BLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lorg/bitcoinj/wallet/MarriedKeyChain;Ljava/util/List;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/MarriedKeyChain;->addFollowingAccountKeys(Ljava/util/List;I)V

    return-void
.end method

.method private addFollowingAccountKeys(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;I)V"
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Multisig threshold can\'t exceed total number of keys"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 187
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain;->numLeafKeysIssued()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "Active keychain already has keys in use"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->followingKeyChains:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 190
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 193
    invoke-virtual {v3}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain;->getAccountPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    const-string v5, "Following keys have to be account keys"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 194
    invoke-static {v3}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->watchAndFollow(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v3

    .line 195
    iget v4, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lookaheadSize:I

    if-ltz v4, :cond_4

    .line 196
    iget v4, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lookaheadSize:I

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadSize(I)V

    .line 197
    :cond_4
    iget v4, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lookaheadThreshold:I

    if-ltz v4, :cond_5

    .line 198
    iget v4, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lookaheadThreshold:I

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadThreshold(I)V

    .line 199
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 202
    :cond_6
    iput p2, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->sigsRequiredToSpend:I

    .line 203
    iput-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->followingKeyChains:Ljava/util/List;

    return-void
.end method

.method public static builder()Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bitcoinj/wallet/MarriedKeyChain$Builder<",
            "*>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;-><init>()V

    return-object v0
.end method

.method private formatScript(Lorg/bitcoinj/script/Script;Ljava/lang/StringBuilder;Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 4

    const-string v0, "  addr:"

    .line 247
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p1, p3}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "  hash160:"

    .line 249
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    sget-object p3, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getCreationTimeSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    const-string p3, "  creationTimeSeconds:"

    .line 252
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getCreationTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p1, 0xa

    .line 253
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getMarriedKeysWithFollowed(Lorg/bitcoinj/crypto/DeterministicKey;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->followingKeyChains:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 170
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAhead()V

    .line 171
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 174
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public findRedeemDataByScriptHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/RedeemData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/RedeemData;

    return-object p1
.end method

.method protected formatAddresses(ZLorg/bitcoinj/core/NetworkParameters;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 238
    iget-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->followingKeyChains:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    const-string v2, "Following chain:  "

    .line 239
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getWatchingKey()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bitcoinj/crypto/DeterministicKey;->serializePubB58(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    iget-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/RedeemData;

    .line 243
    iget-object v0, v0, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    invoke-static {v0}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript(Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-direct {p0, v0, p3, p2}, Lorg/bitcoinj/wallet/MarriedKeyChain;->formatScript(Lorg/bitcoinj/script/Script;Ljava/lang/StringBuilder;Lorg/bitcoinj/core/NetworkParameters;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public freshOutputScript(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/script/Script;
    .locals 6

    .line 155
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/MarriedKeyChain;->getKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->followingKeyChains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 158
    invoke-virtual {v3, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v3

    .line 159
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bitcoinj/crypto/ChildNumber;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Following keychains should be in sync"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 160
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 163
    iget v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->sigsRequiredToSpend:I

    invoke-static {v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->createRedeemScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    .line 164
    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript(Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    return-object p1
.end method

.method public getFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;
    .locals 7

    .line 281
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 284
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/BloomFilter;

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/core/BloomFilter;-><init>(IDJ)V

    .line 285
    iget-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/ByteString;

    invoke-virtual {p3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/bitcoinj/core/BloomFilter;->insert([B)V

    .line 287
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/RedeemData;

    iget-object p2, p2, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/bitcoinj/core/BloomFilter;->insert([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getRedeemData(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/RedeemData;
    .locals 1

    .line 180
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/MarriedKeyChain;->getMarriedKeysWithFollowed(Lorg/bitcoinj/crypto/DeterministicKey;)Ljava/util/List;

    move-result-object p1

    .line 181
    iget v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->sigsRequiredToSpend:I

    invoke-static {v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->createRedeemScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 182
    invoke-static {p1, v0}, Lorg/bitcoinj/wallet/RedeemData;->of(Ljava/util/List;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    return-object p1
.end method

.method public isMarried()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public maybeLookAheadScripts()V
    .locals 4

    .line 258
    invoke-super {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->maybeLookAheadScripts()V

    .line 259
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain;->getLeafKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 261
    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Number of scripts is greater than number of leaf keys"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 262
    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain;->maybeLookAhead()V

    .line 266
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain;->getLeafKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 267
    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/MarriedKeyChain;->getRedeemData(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object v1

    .line 268
    iget-object v2, v1, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    invoke-static {v2}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript(Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->marriedKeysRedeemData:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public numBloomFilterEntries()I
    .locals 1

    .line 297
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain;->maybeLookAhead()V

    .line 298
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain;->getLeafKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
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

    .line 223
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 226
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->followingKeyChains:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 227
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->serializeMyselfToProtobuf()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain;->serializeMyselfToProtobuf()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method setFollowingKeyChains(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 144
    iput-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->followingKeyChains:Ljava/util/List;

    return-void
.end method

.method public setLookaheadSize(I)V
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 210
    :try_start_0
    invoke-super {p0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadSize(I)V

    .line 211
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->followingKeyChains:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->followingKeyChains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 213
    invoke-virtual {v1, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->setLookaheadSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
