.class public Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;
.super Ljava/lang/Object;
.source "TorTapKeyAgreement.java"

# interfaces
.implements Lcom/subgraph/orchid/crypto/TorKeyAgreement;


# static fields
.field public static final DH_LEN:I = 0x80

.field private static final DH_PARAMETER_SPEC:Ljavax/crypto/spec/DHParameterSpec;

.field public static final DH_SEC_LEN:I = 0x28

.field private static final G:Ljava/math/BigInteger;

.field private static final P1024:Ljava/math/BigInteger;

.field private static final PRIVATE_KEY_SIZE:I = 0x140


# instance fields
.field private final dh:Ljavax/crypto/KeyAgreement;

.field private final keyPair:Ljava/security/KeyPair;

.field private final onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "00FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE65381FFFFFFFFFFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->P1024:Ljava/math/BigInteger;

    .line 49
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->G:Ljava/math/BigInteger;

    .line 58
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    sget-object v1, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->P1024:Ljava/math/BigInteger;

    sget-object v2, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->G:Ljava/math/BigInteger;

    const/16 v3, 0x140

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    sput-object v0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->DH_PARAMETER_SPEC:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;-><init>(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->keyPair:Ljava/security/KeyPair;

    .line 71
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->createDH()Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->dh:Ljavax/crypto/KeyAgreement;

    .line 72
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-void
.end method

.method private final createDH()Ljavax/crypto/KeyAgreement;
    .locals 2

    :try_start_0
    const-string v0, "DH"

    .line 151
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final generateKeyPair()Ljava/security/KeyPair;
    .locals 2

    :try_start_0
    const-string v0, "DH"

    .line 161
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->DH_PARAMETER_SPEC:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 163
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isValidPublicValue(Ljava/math/BigInteger;)Z
    .locals 4

    .line 124
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->P1024:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public createOnionSkin()[B
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->getPublicKeyBytes()[B

    move-result-object v0

    .line 171
    new-instance v1, Lcom/subgraph/orchid/crypto/HybridEncryption;

    invoke-direct {v1}, Lcom/subgraph/orchid/crypto/HybridEncryption;-><init>()V

    .line 172
    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-virtual {v1, v0, v2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->encrypt([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeysFromDHPublicAndHash(Ljava/math/BigInteger;[B[B[B)Z
    .locals 1

    .line 187
    invoke-static {p1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->isValidPublicValue(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->getSharedSecret(Ljava/math/BigInteger;)[B

    move-result-object p1

    .line 191
    new-instance v0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;-><init>([B)V

    .line 192
    invoke-virtual {v0, p3, p4}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->deriveKeys([B[B)V

    .line 193
    invoke-static {p4, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 188
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorException;

    const-string p2, "Illegal DH public value"

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deriveKeysFromHandshakeResponse([B[B[B)Z
    .locals 3

    .line 177
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 182
    new-instance p1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 183
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->deriveKeysFromDHPublicAndHash(Ljava/math/BigInteger;[B[B[B)Z

    move-result p1

    return p1
.end method

.method public getPublicKeyBytes()[B
    .locals 6

    const/16 v0, 0x80

    new-array v1, v0, [B

    .line 98
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->getPublicValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 99
    aget-byte v4, v2, v3

    if-nez v4, :cond_0

    array-length v4, v2

    const/16 v5, 0x81

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    .line 100
    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 101
    :cond_0
    array-length v4, v2

    if-gt v4, v0, :cond_1

    .line 102
    array-length v4, v2

    sub-int/2addr v0, v4

    .line 103
    array-length v4, v2

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Public value is longer than DH_LEN but not because of sign bit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicValue()Ljava/math/BigInteger;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 87
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSharedSecret(Ljava/math/BigInteger;)[B
    .locals 4

    :try_start_0
    const-string v0, "DH"

    .line 140
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 141
    new-instance v1, Ljavax/crypto/spec/DHPublicKeySpec;

    sget-object v2, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->P1024:Ljava/math/BigInteger;

    sget-object v3, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->G:Ljava/math/BigInteger;

    invoke-direct {v1, p1, v2, v3}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 142
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->dh:Ljavax/crypto/KeyAgreement;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 144
    iget-object p1, p0, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->dh:Ljavax/crypto/KeyAgreement;

    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Lcom/subgraph/orchid/TorException;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
