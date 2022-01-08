.class public Lorg/bitcoinj/crypto/DeterministicKey;
.super Lorg/bitcoinj/core/ECKey;
.source "DeterministicKey.java"


# static fields
.field public static final CHILDNUM_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chainCode:[B

.field private final childNumberPath:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final depth:I

.field private final parent:Lorg/bitcoinj/crypto/DeterministicKey;

.field private parentFingerprint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lorg/bitcoinj/crypto/DeterministicKey$1;

    invoke-direct {v0}, Lorg/bitcoinj/crypto/DeterministicKey$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/crypto/DeterministicKey;->CHILDNUM_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;[BLjava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 3
    .param p4    # Lorg/bitcoinj/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;[B",
            "Ljava/math/BigInteger;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-static {p3}, Lorg/bitcoinj/core/ECKey;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->compressPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V

    .line 92
    array-length p3, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ne p3, v2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 93
    iput-object p4, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 94
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    .line 95
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    if-nez p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 96
    :cond_1
    iget p1, p4, Lorg/bitcoinj/crypto/DeterministicKey;->depth:I

    add-int/2addr p1, v0

    :goto_1
    iput p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->depth:I

    if-eqz p4, :cond_2

    .line 97
    invoke-virtual {p4}, Lorg/bitcoinj/crypto/DeterministicKey;->getFingerprint()I

    move-result v1

    :cond_2
    iput v1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parentFingerprint:I

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableList;[BLjava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;II)V
    .locals 1
    .param p4    # Lorg/bitcoinj/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;[B",
            "Ljava/math/BigInteger;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            "II)V"
        }
    .end annotation

    .line 159
    invoke-static {p3}, Lorg/bitcoinj/core/ECKey;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->compressPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V

    .line 160
    array-length p3, p2

    const/16 v0, 0x20

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 161
    iput-object p4, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 162
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    .line 163
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    .line 164
    iput p5, p0, Lorg/bitcoinj/crypto/DeterministicKey;->depth:I

    .line 165
    invoke-direct {p0, p4, p6}, Lorg/bitcoinj/crypto/DeterministicKey;->ascertainParentFingerprint(Lorg/bitcoinj/crypto/DeterministicKey;I)I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parentFingerprint:I

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/crypto/LazyECPoint;Lorg/bitcoinj/crypto/EncryptedData;Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 6
    .param p6    # Lorg/bitcoinj/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;[B",
            "Lorg/bitcoinj/crypto/KeyCrypter;",
            "Lorg/bitcoinj/crypto/LazyECPoint;",
            "Lorg/bitcoinj/crypto/EncryptedData;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p6

    .line 107
    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 108
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/EncryptedData;

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    .line 109
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/KeyCrypter;

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 2
    .param p4    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/bitcoinj/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;[B",
            "Lorg/bitcoinj/crypto/LazyECPoint;",
            "Ljava/math/BigInteger;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-static {p3}, Lorg/bitcoinj/crypto/DeterministicKey;->compressPoint(Lorg/bitcoinj/crypto/LazyECPoint;)Lorg/bitcoinj/crypto/LazyECPoint;

    move-result-object p3

    invoke-direct {p0, p4, p3}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/bitcoinj/crypto/LazyECPoint;)V

    .line 70
    array-length p3, p2

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ne p3, v1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 71
    iput-object p5, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    .line 73
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    if-nez p5, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 74
    :cond_1
    iget p1, p5, Lorg/bitcoinj/crypto/DeterministicKey;->depth:I

    add-int/2addr p1, p4

    :goto_1
    iput p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->depth:I

    if-eqz p5, :cond_2

    .line 75
    invoke-virtual {p5}, Lorg/bitcoinj/crypto/DeterministicKey;->getFingerprint()I

    move-result v0

    :cond_2
    iput v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parentFingerprint:I

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Lorg/bitcoinj/crypto/DeterministicKey;II)V
    .locals 1
    .param p4    # Lorg/bitcoinj/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;[B",
            "Lorg/bitcoinj/crypto/LazyECPoint;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            "II)V"
        }
    .end annotation

    .line 139
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-static {p3}, Lorg/bitcoinj/crypto/DeterministicKey;->compressPoint(Lorg/bitcoinj/crypto/LazyECPoint;)Lorg/bitcoinj/crypto/LazyECPoint;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/bitcoinj/crypto/LazyECPoint;)V

    .line 140
    array-length p3, p2

    const/16 v0, 0x20

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 141
    iput-object p4, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 142
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    .line 143
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    .line 144
    iput p5, p0, Lorg/bitcoinj/crypto/DeterministicKey;->depth:I

    .line 145
    invoke-direct {p0, p4, p6}, Lorg/bitcoinj/crypto/DeterministicKey;->ascertainParentFingerprint(Lorg/bitcoinj/crypto/DeterministicKey;I)I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parentFingerprint:I

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;[BLorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 6
    .param p4    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/bitcoinj/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;[B",
            "Lorg/spongycastle/math/ec/ECPoint;",
            "Ljava/math/BigInteger;",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ")V"
        }
    .end annotation

    .line 83
    new-instance v3, Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-direct {v3, p3}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/DeterministicKey;)V
    .locals 2

    .line 171
    iget-object v0, p1, Lorg/bitcoinj/crypto/DeterministicKey;->priv:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bitcoinj/crypto/DeterministicKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V

    .line 172
    iput-object p2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 173
    iget-object p2, p1, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    .line 174
    iget-object p2, p1, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    iput-object p2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    .line 175
    iget-object p1, p1, Lorg/bitcoinj/crypto/DeterministicKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    iput-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    .line 176
    iget-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->depth:I

    .line 177
    iget-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getFingerprint()I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parentFingerprint:I

    return-void
.end method

.method static addChecksum([B)[B
    .locals 4

    .line 283
    array-length v0, p0

    add-int/lit8 v1, v0, 0x4

    .line 284
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 285
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object p0

    const/4 v3, 0x4

    .line 287
    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private ascertainParentFingerprint(Lorg/bitcoinj/crypto/DeterministicKey;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 120
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getFingerprint()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 123
    invoke-virtual {v3}, Lorg/bitcoinj/crypto/DeterministicKey;->getFingerprint()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "parent fingerprint mismatch"

    .line 121
    invoke-static {v0, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return p2

    :cond_2
    return p1
.end method

.method private derivePrivateKeyDownwards(Lorg/bitcoinj/crypto/DeterministicKey;[B)Ljava/math/BigInteger;
    .locals 7

    .line 426
    new-instance v6, Lorg/bitcoinj/crypto/DeterministicKey;

    iget-object v1, p1, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p1, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    iget-object v3, p1, Lorg/bitcoinj/crypto/DeterministicKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v5, p1, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 430
    iget-object p2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/crypto/ChildNumber;

    .line 432
    invoke-static {v6, p2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v6

    goto :goto_0

    .line 437
    :cond_0
    iget-object p1, v6, Lorg/bitcoinj/crypto/DeterministicKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    iget-object p2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/crypto/LazyECPoint;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 439
    iget-object p1, v6, Lorg/bitcoinj/crypto/DeterministicKey;->priv:Ljava/math/BigInteger;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    return-object p1

    .line 438
    :cond_1
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string p2, "Could not decrypt bytes"

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static deserialize(Lorg/bitcoinj/core/NetworkParameters;[B)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    const/4 v0, 0x0

    .line 513
    invoke-static {p0, p1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->deserialize(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 11
    .param p2    # Lorg/bitcoinj/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 521
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 523
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getBip32HeaderPriv()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getBip32HeaderPub()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown header bytes: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->toBase58([B)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 525
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getBip32HeaderPub()I

    move-result p0

    const/4 p1, 0x1

    if-ne v1, p0, :cond_2

    const/4 v3, 0x1

    .line 526
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 v9, p0, 0xff

    .line 527
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 528
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 529
    new-instance v1, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-direct {v1, p0}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(I)V

    if-eqz p2, :cond_6

    if-eqz v10, :cond_5

    .line 534
    invoke-virtual {p2}, Lorg/bitcoinj/crypto/DeterministicKey;->getFingerprint()I

    move-result p0

    if-ne p0, v10, :cond_4

    .line 536
    invoke-virtual {p2}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/bitcoinj/crypto/HDUtils;->append(Ljava/util/List;Lorg/bitcoinj/crypto/ChildNumber;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 537
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ne v1, v9, :cond_3

    goto :goto_1

    .line 538
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Depth does not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 535
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parent fingerprints don\'t match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 533
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parent was provided but this key doesn\'t have one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-lt v9, p1, :cond_7

    .line 545
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_1

    .line 546
    :cond_7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_1
    move-object v5, p0

    const/16 p0, 0x20

    new-array v6, p0, [B

    .line 549
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 p0, 0x21

    new-array p0, p0, [B

    .line 551
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 552
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    xor-int/2addr v0, p1

    const-string v1, "Found unexpected data in key"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v3, :cond_8

    .line 554
    new-instance p1, Lorg/bitcoinj/crypto/DeterministicKey;

    new-instance v7, Lorg/bitcoinj/crypto/LazyECPoint;

    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Lorg/bitcoinj/crypto/DeterministicKey;II)V

    return-object p1

    .line 556
    :cond_8
    new-instance v0, Lorg/bitcoinj/crypto/DeterministicKey;

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, p1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v4, v0

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLjava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;II)V

    return-object v0
.end method

.method public static deserializeB58(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-static {v0, p0, p1}, Lorg/bitcoinj/crypto/DeterministicKey;->deserializeB58(Lorg/bitcoinj/crypto/DeterministicKey;Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeB58(Lorg/bitcoinj/crypto/DeterministicKey;Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 0
    .param p0    # Lorg/bitcoinj/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 506
    invoke-static {p1}, Lorg/bitcoinj/core/Base58;->decodeChecked(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2, p1, p0}, Lorg/bitcoinj/crypto/DeterministicKey;->deserialize(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0

    return-object p0
.end method

.method private findOrDeriveEncryptedPrivateKey(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Ljava/math/BigInteger;
    .locals 3

    .line 393
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    invoke-interface {p1, v2, p2}, Lorg/bitcoinj/crypto/KeyCrypter;->decrypt(Lorg/bitcoinj/crypto/EncryptedData;Lorg/spongycastle/crypto/params/KeyParameter;)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    :goto_0
    if-eqz v0, :cond_2

    .line 399
    iget-object v1, v0, Lorg/bitcoinj/crypto/DeterministicKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 400
    :cond_1
    iget-object v0, v0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 404
    iget-object v1, v0, Lorg/bitcoinj/crypto/DeterministicKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    invoke-interface {p1, v1, p2}, Lorg/bitcoinj/crypto/KeyCrypter;->decrypt(Lorg/bitcoinj/crypto/EncryptedData;Lorg/spongycastle/crypto/params/KeyParameter;)[B

    move-result-object p1

    .line 405
    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/crypto/DeterministicKey;->derivePrivateKeyDownwards(Lorg/bitcoinj/crypto/DeterministicKey;[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 403
    :cond_3
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string p2, "Neither this key nor its parents have an encrypted private key"

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private findOrDerivePrivateKey()Ljava/math/BigInteger;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 419
    invoke-direct {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->findParentWithPrivKey()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 422
    :cond_0
    iget-object v1, v0, Lorg/bitcoinj/crypto/DeterministicKey;->priv:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bitcoinj/crypto/DeterministicKey;->derivePrivateKeyDownwards(Lorg/bitcoinj/crypto/DeterministicKey;[B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private findParentWithPrivKey()Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 411
    iget-object v1, v0, Lorg/bitcoinj/crypto/DeterministicKey;->priv:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    iget-object v0, v0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private serialize(Lorg/bitcoinj/core/NetworkParameters;Z)[B
    .locals 2

    const/16 v0, 0x4e

    .line 472
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 473
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getBip32HeaderPub()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getBip32HeaderPriv()I

    move-result p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 474
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getDepth()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getParentFingerprint()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 476
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/ChildNumber;->i()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 477
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getChainCode()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_1

    .line 478
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKey()[B

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKeyBytes33()[B

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 479
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 480
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method static toBase58([B)Ljava/lang/String;
    .locals 0

    .line 492
    invoke-static {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->addChecksum([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic decrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/crypto/DeterministicKey;->decrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/bitcoinj/crypto/DeterministicKey;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    return-object p1
.end method

.method public decrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 372
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string p2, "The keyCrypter being used to decrypt the key is different to the one that was used to encrypt it"

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 376
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/crypto/DeterministicKey;->findOrDeriveEncryptedPrivateKey(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Ljava/math/BigInteger;

    move-result-object p1

    .line 377
    new-instance p2, Lorg/bitcoinj/crypto/DeterministicKey;

    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    iget-object v2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-direct {p2, v0, v1, p1, v2}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLjava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 378
    invoke-virtual {p2}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKey()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKey()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 380
    iget-object p1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    if-nez p1, :cond_2

    .line 381
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getCreationTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/bitcoinj/crypto/DeterministicKey;->setCreationTimeSeconds(J)V

    :cond_2
    return-object p2

    .line 379
    :cond_3
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string p2, "Provided AES key is wrong"

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 387
    invoke-super {p0, p1}, Lorg/bitcoinj/core/ECKey;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;

    return-object p1
.end method

.method public derive(I)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 2

    .line 448
    new-instance v0, Lorg/bitcoinj/crypto/ChildNumber;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-static {p0, v0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    return-object p1
.end method

.method public dropParent()Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 7

    .line 277
    new-instance v6, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getChainCode()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bitcoinj/crypto/DeterministicKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    iget-object v4, p0, Lorg/bitcoinj/crypto/DeterministicKey;->priv:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 278
    iget v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parentFingerprint:I

    iput v0, v6, Lorg/bitcoinj/crypto/DeterministicKey;->parentFingerprint:I

    return-object v6
.end method

.method public dropPrivateBytes()Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 7

    .line 262
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->isPubKeyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 265
    :cond_0
    new-instance v0, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getChainCode()[B

    move-result-object v3

    iget-object v4, p0, Lorg/bitcoinj/crypto/DeterministicKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-object v0
.end method

.method public bridge synthetic encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/crypto/DeterministicKey;->encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 293
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Must supply a new parent for encryption"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 10
    .param p3    # Lorg/bitcoinj/crypto/DeterministicKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 298
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 300
    invoke-virtual {p3}, Lorg/bitcoinj/crypto/DeterministicKey;->isEncrypted()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKeyBytes()[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Private key is not available"

    .line 302
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 303
    invoke-interface {p1, v0, p2}, Lorg/bitcoinj/crypto/KeyCrypter;->encrypt([BLorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/EncryptedData;

    move-result-object v8

    .line 304
    new-instance p2, Lorg/bitcoinj/crypto/DeterministicKey;

    iget-object v4, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    iget-object v5, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    iget-object v7, p0, Lorg/bitcoinj/crypto/DeterministicKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    move-object v3, p2

    move-object v6, p1

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/KeyCrypter;Lorg/bitcoinj/crypto/LazyECPoint;Lorg/bitcoinj/crypto/EncryptedData;Lorg/bitcoinj/crypto/DeterministicKey;)V

    if-nez p3, :cond_2

    .line 306
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getCreationTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/bitcoinj/crypto/DeterministicKey;->setCreationTimeSeconds(J)V

    :cond_2
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 591
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 592
    :cond_1
    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 593
    invoke-super {p0, p1}, Lorg/bitcoinj/core/ECKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    iget-object v3, p1, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    .line 594
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    .line 595
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public formatKeyWithAddress(ZLjava/lang/StringBuilder;Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 2

    .line 618
    invoke-virtual {p0, p3}, Lorg/bitcoinj/crypto/DeterministicKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    const-string v1, "  addr:"

    .line 619
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  hash160:"

    .line 620
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKeyHash()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  ("

    .line 621
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPathAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "  "

    .line 623
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lorg/bitcoinj/crypto/DeterministicKey;->toStringWithPrivate(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public getChainCode()[B
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    return-object v0
.end method

.method public getChildNumber()Lorg/bitcoinj/crypto/ChildNumber;
    .locals 2

    .line 207
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bitcoinj/crypto/ChildNumber;->ZERO:Lorg/bitcoinj/crypto/ChildNumber;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/crypto/ChildNumber;

    :goto_0
    return-object v0
.end method

.method public getCreationTimeSeconds()J
    .locals 2

    .line 566
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getCreationTimeSeconds()J

    move-result-wide v0

    return-wide v0

    .line 569
    :cond_0
    invoke-super {p0}, Lorg/bitcoinj/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDepth()I
    .locals 1

    .line 202
    iget v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->depth:I

    return v0
.end method

.method public getFingerprint()I
    .locals 3

    .line 227
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getIdentifier()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public getIdentifier()[B
    .locals 1

    .line 221
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 345
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    return-object v0

    .line 347
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    return-object v0
.end method

.method public getParentFingerprint()I
    .locals 1

    .line 240
    iget v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parentFingerprint:I

    return v0
.end method

.method public getPath()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getPathAsString()Ljava/lang/String;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/crypto/HDUtils;->formatPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivKey()Ljava/math/BigInteger;
    .locals 3

    .line 458
    invoke-direct {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->findOrDerivePrivateKey()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Private key bytes not available"

    .line 459
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public getPrivKeyBytes33()[B
    .locals 5

    const/16 v0, 0x21

    new-array v1, v0, [B

    .line 249
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKeyBytes()[B

    move-result-object v2

    .line 250
    array-length v3, v2

    sub-int/2addr v0, v3

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getSecretBytes()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->priv:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKeyBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasPrivKey()Z
    .locals 1

    .line 321
    invoke-direct {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->findParentWithPrivKey()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 600
    invoke-super {p0}, Lorg/bitcoinj/core/ECKey;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->childNumberPath:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->priv:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPubKeyOnly()Z
    .locals 1

    .line 316
    invoke-super {p0}, Lorg/bitcoinj/core/ECKey;->isPubKeyOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->isPubKeyOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serializePrivB58(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 488
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->serialize(Lorg/bitcoinj/core/NetworkParameters;Z)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->toBase58([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serializePrivate(Lorg/bitcoinj/core/NetworkParameters;)[B
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->serialize(Lorg/bitcoinj/core/NetworkParameters;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public serializePubB58(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 484
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->serialize(Lorg/bitcoinj/core/NetworkParameters;Z)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->toBase58([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serializePublic(Lorg/bitcoinj/core/NetworkParameters;)[B
    .locals 1

    const/4 v0, 0x1

    .line 464
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->serialize(Lorg/bitcoinj/core/NetworkParameters;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public setCreationTimeSeconds(J)V
    .locals 1

    .line 578
    iget-object v0, p0, Lorg/bitcoinj/crypto/DeterministicKey;->parent:Lorg/bitcoinj/crypto/DeterministicKey;

    if-nez v0, :cond_0

    .line 581
    invoke-super {p0, p1, p2}, Lorg/bitcoinj/core/ECKey;->setCreationTimeSeconds(J)V

    return-void

    .line 579
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Creation time can only be set on root keys."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sign(Lorg/bitcoinj/core/Sha256Hash;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey$ECDSASignature;
    .locals 1
    .param p2    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-super {p0, p1, p2}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    return-object p1

    .line 361
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->findOrDerivePrivateKey()Ljava/math/BigInteger;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 366
    invoke-super {p0, p1, p2}, Lorg/bitcoinj/core/ECKey;->doSign(Lorg/bitcoinj/core/Sha256Hash;Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    return-object p1

    .line 364
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;

    invoke-direct {p1}, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 605
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 606
    sget-object v1, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    iget-object v2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v2}, Lorg/bitcoinj/crypto/LazyECPoint;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pub"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 607
    sget-object v1, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    iget-object v2, p0, Lorg/bitcoinj/crypto/DeterministicKey;->chainCode:[B

    invoke-virtual {v1, v2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chainCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 608
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPathAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 609
    iget-wide v1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->creationTimeSeconds:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 610
    iget-wide v1, p0, Lorg/bitcoinj/crypto/DeterministicKey;->creationTimeSeconds:J

    const-string v3, "creationTimeSeconds"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 611
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->isEncrypted()Z

    move-result v1

    const-string v2, "isEncrypted"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 612
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->isPubKeyOnly()Z

    move-result v1

    const-string v2, "isPubKeyOnly"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 613
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
