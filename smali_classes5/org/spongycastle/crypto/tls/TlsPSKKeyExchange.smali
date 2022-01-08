.class public Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsPSKKeyExchange.java"


# instance fields
.field protected clientECPointFormats:[S

.field protected dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

.field protected dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

.field protected namedCurves:[I

.field protected premasterSecret:[B

.field protected pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

.field protected psk_identity_hint:[B

.field protected rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

.field protected serverECPointFormats:[S

.field protected serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/spongycastle/crypto/tls/TlsPSKIdentity;Lorg/spongycastle/crypto/params/DHParameters;[I[S[S)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    .line 31
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 32
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 35
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 36
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported key exchange algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_0
    :pswitch_0
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    .line 56
    iput-object p4, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    .line 57
    iput-object p5, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->namedCurves:[I

    .line 58
    iput-object p6, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->clientECPointFormats:[S

    .line 59
    iput-object p7, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverECPointFormats:[S

    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->skipIdentityHint()V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->notifyIdentityHint([B)V

    .line 213
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->getPSKIdentity()[B

    move-result-object v0

    .line 215
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 217
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    goto :goto_1

    .line 222
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    .line 227
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 229
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsRSAUtils;->generateEncryptedPreMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    :cond_2
    :goto_1
    return-void

    .line 225
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected generateOtherSecret(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0x50

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 250
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object p1

    return-object p1

    .line 255
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 258
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_3

    .line 264
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 266
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    return-object p1

    .line 269
    :cond_2
    new-array p1, p1, [B

    return-object p1

    .line 261
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public generatePremasterSecret()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->getPSK()[B

    move-result-object v0

    .line 238
    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->generateOtherSecret(I)[B

    move-result-object v1

    .line 240
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    array-length v4, v0

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 241
    invoke-static {v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 242
    invoke-static {v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 243
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public generateServerKeyExchange()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->requiresServerKeyExchange()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v1, :cond_1

    .line 98
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 105
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    .line 107
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-static {v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    goto :goto_1

    .line 109
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 115
    :cond_3
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    .line 120
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 130
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 140
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->validateRSAPublicKey(Lorg/spongycastle/crypto/params/RSAKeyParameters;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    const/16 v1, 0x20

    .line 155
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 157
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    return-void

    .line 150
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 144
    :catch_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2b

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 132
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 128
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

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

    .line 74
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 81
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsEncryptionCredentials;

    return-void

    .line 76
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    .line 177
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 179
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/ServerDHParams;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerDHParams;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ServerDHParams;->getPublicKey()Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    goto :goto_0

    .line 183
    :cond_0
    iget p1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    :goto_0
    return-void
.end method

.method public requiresServerKeyExchange()Z
    .locals 2

    .line 162
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

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

    .line 65
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected validateRSAPublicKey(Lorg/spongycastle/crypto/params/RSAKeyParameters;)Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 280
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2f

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
