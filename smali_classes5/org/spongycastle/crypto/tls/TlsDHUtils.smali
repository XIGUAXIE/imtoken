.class public Lorg/spongycastle/crypto/tls/TlsDHUtils;
.super Ljava/lang/Object;
.source "TlsDHUtils.java"


# static fields
.field static final ONE:Ljava/math/BigInteger;

.field static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 20
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 21
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areCompatibleParameters(Lorg/spongycastle/crypto/params/DHParameters;Lorg/spongycastle/crypto/params/DHParameters;)Z
    .locals 2

    .line 25
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B
    .locals 1

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v0}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 32
    invoke-virtual {v0, p0}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p0

    .line 38
    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateDHKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    .line 43
    new-instance v0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    .line 44
    new-instance v1, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-direct {v1, p0, p1}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 45
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateDHKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 54
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 56
    invoke-virtual {p0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    return-object p0
.end method

.method public static generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateDHKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 65
    new-instance v0, Lorg/spongycastle/crypto/tls/ServerDHParams;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/ServerDHParams;-><init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V

    .line 66
    invoke-virtual {v0, p2}, Lorg/spongycastle/crypto/tls/ServerDHParams;->encode(Ljava/io/OutputStream;)V

    .line 68
    invoke-virtual {p0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    return-object p0
.end method

.method public static readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v3, 0x2

    .line 78
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_2

    .line 82
    sget-object v3, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_1

    sget-object v3, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 86
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    return-object p0

    .line 88
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    .line 84
    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    .line 80
    :cond_2
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method
