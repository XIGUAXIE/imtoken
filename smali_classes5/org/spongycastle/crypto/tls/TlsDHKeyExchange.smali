.class public Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsDHKeyExchange.java"


# static fields
.field protected static final ONE:Ljava/math/BigInteger;

.field protected static final TWO:Ljava/math/BigInteger;


# instance fields
.field protected agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

.field protected dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreeClientPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

.field protected dhAgreeServerPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

.field protected dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

.field protected serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 22
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 23
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported key exchange algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {p1}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    goto :goto_1

    .line 50
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {p1}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 56
    :goto_1
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    return-void
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    :cond_0
    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;->generateAgreement(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_2

    .line 203
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    return-object v0

    .line 206
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    :cond_0
    return-void
.end method

.method public processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    .line 161
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->agreementCredentials:Lorg/spongycastle/crypto/tls/TlsAgreementCredentials;

    goto :goto_0

    .line 163
    :cond_0
    instance-of p1, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 88
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    const/16 v3, 0x2e

    if-nez v2, :cond_0

    .line 99
    :try_start_1
    check-cast v1, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x8

    .line 106
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    goto :goto_0

    .line 103
    :catch_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 110
    :cond_0
    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x80

    .line 115
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 118
    :goto_0
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    return-void

    .line 112
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 92
    :catch_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2b

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 80
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public requiresServerKeyExchange()Z
    .locals 2

    .line 123
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;->keyExchange:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object p1

    const/4 v0, 0x0

    .line 138
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 140
    aget-short v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
