.class public final Lorg/bitcoinj/crypto/HDKeyDerivation;
.super Ljava/lang/Object;
.source "HDKeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;,
        Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;
    }
.end annotation


# static fields
.field public static final MAX_CHILD_DERIVATION_ATTEMPTS:I = 0x64

.field private static final RAND_INT:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    invoke-static {}, Lorg/bitcoinj/core/Utils;->isAndroidRuntime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lorg/bitcoinj/crypto/LinuxSecureRandom;

    invoke-direct {v0}, Lorg/bitcoinj/crypto/LinuxSecureRandom;-><init>()V

    .line 40
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x100

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sput-object v0, Lorg/bitcoinj/crypto/HDKeyDerivation;->RAND_INT:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertLessThanN(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 1

    .line 226
    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance p0, Lorg/bitcoinj/crypto/HDDerivationException;

    invoke-direct {p0, p1}, Lorg/bitcoinj/crypto/HDDerivationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static assertNonInfinity(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)V
    .locals 1

    .line 221
    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance p0, Lorg/bitcoinj/crypto/HDDerivationException;

    invoke-direct {p0, p1}, Lorg/bitcoinj/crypto/HDDerivationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static assertNonZero(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 1

    .line 216
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance p0, Lorg/bitcoinj/crypto/HDDerivationException;

    invoke-direct {p0, p1}, Lorg/bitcoinj/crypto/HDDerivationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createMasterPrivKeyFromBytes([B[B)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/HDDerivationException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string p0, "Generated master key is invalid."

    .line 86
    invoke-static {v0, p0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->assertNonZero(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 87
    invoke-static {v0, p0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->assertLessThanN(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 88
    new-instance p0, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLjava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-object p0
.end method

.method public static createMasterPrivateKey([B)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/HDDerivationException;
        }
    .end annotation

    .line 64
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Seed is too short and could be brute forced"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v0, "Bitcoin seed"

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/crypto/HDUtils;->createHmacSha512Digest([B)Lorg/spongycastle/crypto/macs/HMac;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bitcoinj/crypto/HDUtils;->hmacSha512(Lorg/spongycastle/crypto/macs/HMac;[B)[B

    move-result-object p0

    .line 69
    array-length v0, p0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/16 v0, 0x20

    .line 70
    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 71
    invoke-static {p0, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 72
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 73
    invoke-static {v1, v0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->createMasterPrivKeyFromBytes([B[B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0

    .line 74
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 75
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 77
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/crypto/DeterministicKey;->setCreationTimeSeconds(J)V

    return-object p0
.end method

.method public static createMasterPubKeyFromBytes([B[B)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 7

    .line 92
    new-instance v6, Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    new-instance v3, Lorg/bitcoinj/crypto/LazyECPoint;

    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-direct {v3, v0, p0}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-object v6
.end method

.method public static deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;I)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    .line 104
    new-instance v0, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-direct {v0, p1}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(I)V

    invoke-static {p0, v0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0

    return-object p0
.end method

.method public static deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/HDDerivationException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->hasPrivKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;->NORMAL:Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;

    invoke-static {p0, p1, v0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKeyBytesFromPublic(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;)Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;

    move-result-object v0

    .line 133
    new-instance v7, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 134
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/bitcoinj/crypto/HDUtils;->append(Ljava/util/List;Lorg/bitcoinj/crypto/ChildNumber;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iget-object v3, v0, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;->chainCode:[B

    new-instance v4, Lorg/bitcoinj/crypto/LazyECPoint;

    sget-object p1, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 136
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    iget-object v0, v0, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;->keyBytes:[B

    invoke-direct {v4, p1, v0}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    const/4 v5, 0x0

    move-object v1, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLorg/bitcoinj/crypto/LazyECPoint;Ljava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-object v7

    .line 140
    :cond_0
    invoke-static {p0, p1}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKeyBytesFromPrivate(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;

    move-result-object v0

    .line 141
    new-instance v1, Lorg/bitcoinj/crypto/DeterministicKey;

    .line 142
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPath()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/bitcoinj/crypto/HDUtils;->append(Ljava/util/List;Lorg/bitcoinj/crypto/ChildNumber;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iget-object v2, v0, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;->chainCode:[B

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    iget-object v0, v0, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;->keyBytes:[B

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, p1, v2, v3, p0}, Lorg/bitcoinj/crypto/DeterministicKey;-><init>(Lcom/google/common/collect/ImmutableList;[BLjava/math/BigInteger;Lorg/bitcoinj/crypto/DeterministicKey;)V

    return-object v1
.end method

.method public static deriveChildKeyBytesFromPrivate(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/HDDerivationException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->hasPrivKey()Z

    move-result v0

    const-string v1, "Parent key must have private key bytes for this method."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    .line 153
    array-length v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x21

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parent pubkey must be 33 bytes, but is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/16 v2, 0x25

    .line 154
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 155
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/ChildNumber;->isHardened()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKeyBytes33()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 160
    :goto_1
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/ChildNumber;->i()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getChainCode()[B

    move-result-object p1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bitcoinj/crypto/HDUtils;->hmacSha512([B[B)[B

    move-result-object p1

    .line 162
    array-length v0, p1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/16 v0, 0x20

    .line 163
    invoke-static {p1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 164
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 165
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v1, "Illegal derived key: I_L >= n"

    .line 166
    invoke-static {v0, v1}, Lorg/bitcoinj/crypto/HDKeyDerivation;->assertLessThanN(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKey()Ljava/math/BigInteger;

    move-result-object p0

    .line 168
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string v0, "Illegal derived key: derived private key equals 0."

    .line 169
    invoke-static {p0, v0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->assertNonZero(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;-><init>([B[B)V

    return-object v0
.end method

.method public static deriveChildKeyBytesFromPublic(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;)Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/HDDerivationException;
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/ChildNumber;->isHardened()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t use private derivation with public keys only."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    .line 181
    array-length v2, v0

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parent pubkey must be 33 bytes, but is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/16 v2, 0x25

    .line 182
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/ChildNumber;->i()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getChainCode()[B

    move-result-object p1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bitcoinj/crypto/HDUtils;->hmacSha512([B[B)[B

    move-result-object p1

    .line 186
    array-length v0, p1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/16 v0, 0x20

    .line 187
    invoke-static {p1, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 188
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 189
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v2, "Illegal derived key: I_L >= n"

    .line 190
    invoke-static {v0, v2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->assertLessThanN(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 192
    sget-object v2, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    .line 194
    sget-object v3, Lorg/bitcoinj/crypto/HDKeyDerivation$1;->$SwitchMap$org$bitcoinj$crypto$HDKeyDerivation$PublicDeriveMode:[I

    invoke-virtual {p2}, Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;->ordinal()I

    move-result p2

    aget p2, v3, p2

    if-eq p2, v1, :cond_3

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 203
    sget-object p2, Lorg/bitcoinj/crypto/HDKeyDerivation;->RAND_INT:Ljava/math/BigInteger;

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/core/ECKey;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    .line 204
    sget-object v0, Lorg/bitcoinj/crypto/HDKeyDerivation;->RAND_INT:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    .line 206
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_2

    .line 208
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 196
    :cond_3
    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    :goto_2
    const-string p2, "Illegal derived key: derived public key equals infinity."

    .line 211
    invoke-static {p0, p2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->assertNonInfinity(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)V

    .line 212
    new-instance p2, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;

    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;-><init>([B[B)V

    return-object p2
.end method

.method public static deriveThisOrNextChildKey(Lorg/bitcoinj/crypto/DeterministicKey;I)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 4

    .line 113
    new-instance v0, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-direct {v0, p1}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(I)V

    .line 114
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/ChildNumber;->isHardened()Z

    move-result p1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 117
    :try_start_0
    new-instance v2, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/ChildNumber;->num()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3, p1}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V
    :try_end_0
    .catch Lorg/bitcoinj/crypto/HDDerivationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :try_start_1
    invoke-static {p0, v2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0
    :try_end_1
    .catch Lorg/bitcoinj/crypto/HDDerivationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-object v0, v2

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    new-instance p0, Lorg/bitcoinj/crypto/HDDerivationException;

    const-string p1, "Maximum number of child derivation attempts reached, this is probably an indication of a bug."

    invoke-direct {p0, p1}, Lorg/bitcoinj/crypto/HDDerivationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
