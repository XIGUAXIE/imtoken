.class public Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;
.super Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;
.source "TlsECDHEKeyExchange.java"


# instance fields
.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;[I[S[S)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v3, 0x17

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 59
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    aget v3, v3, v0

    .line 60
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/NamedCurve;->isValid(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isSupportedNamedCurve(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_1
    const/4 v0, 0x0

    if-ltz v3, :cond_3

    .line 71
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    goto :goto_2

    .line 78
    :cond_3
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    const v5, 0xff01

    invoke-static {v4, v5}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 80
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    goto :goto_2

    .line 82
    :cond_4
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    const v4, 0xff02

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    .line 84
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getParametersForNamedCurve(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    const/16 v4, 0x50

    if-eqz v1, :cond_9

    .line 97
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->generateECKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ECDomainParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v5

    .line 98
    invoke-virtual {v5}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->ecAgreePrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 100
    new-instance v6, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v6}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    if-gez v3, :cond_6

    .line 104
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-static {v3, v1, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeExplicitECParameters([SLorg/spongycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)V

    goto :goto_3

    .line 108
    :cond_6
    invoke-static {v3, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeNamedECParameters(ILjava/io/OutputStream;)V

    .line 111
    :goto_3
    invoke-virtual {v5}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 112
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v3, v1, v6}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->writeECPoint([SLorg/spongycastle/math/ec/ECPoint;Ljava/io/OutputStream;)V

    .line 120
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 128
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    goto :goto_4

    .line 125
    :cond_7
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 133
    :cond_8
    new-instance v1, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v1}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    .line 136
    :goto_4
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    .line 137
    iget-object v4, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v5, v5

    invoke-interface {v1, v4, v2, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v4, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v3, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v3, v3

    invoke-interface {v1, v4, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 139
    invoke-virtual {v6, v1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    .line 141
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 142
    invoke-interface {v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 144
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v1, v3}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v1

    .line 146
    new-instance v2, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 147
    invoke-virtual {v2, v6}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 149
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 94
    :cond_9
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object p1

    .line 217
    iget-object p2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v0, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 218
    iget-object p2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object p3, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length p3, p3

    invoke-interface {p1, p2, v1, p3}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    return-object p1
.end method

.method public processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    instance-of p1, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz p1, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 40
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    return-void

    .line 35
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 157
    new-instance v1, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v1}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 158
    new-instance v2, Lorg/spongycastle/util/io/TeeInputStream;

    invoke-direct {v2, p1, v1}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 160
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->namedCurves:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-static {v3, v4, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->readECParameters([I[SLjava/io/InputStream;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 162
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 164
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v4, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object p1

    .line 166
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v0}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/spongycastle/crypto/Signer;)V

    .line 168
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->clientECPointFormats:[S

    invoke-static {p1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->deserializeECPublicKey([SLorg/spongycastle/crypto/params/ECDomainParameters;[B)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->ecAgreePublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-void

    .line 170
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object p1

    const/4 v0, 0x0

    .line 187
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 189
    aget-short v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 196
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
