.class public abstract Lorg/spongycastle/crypto/tls/DefaultTlsClient;
.super Lorg/spongycastle/crypto/tls/AbstractTlsClient;
.source "DefaultTlsClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method


# virtual methods
.method protected createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 3

    .line 434
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 3

    .line 429
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 7

    .line 445
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v6
.end method

.method protected createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 7

    .line 439
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v6
.end method

.method protected createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    .line 451
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    const/16 v5, 0x8

    const/16 v6, 0xd

    const/16 v7, 0x9

    const/4 v8, 0x3

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    .line 423
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 415
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 349
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v6, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 408
    :sswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 379
    :sswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 229
    :sswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x66

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 302
    :sswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x12

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 259
    :sswitch_4
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 298
    :sswitch_5
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 255
    :sswitch_6
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 367
    :sswitch_7
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x14

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 342
    :sswitch_8
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x13

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 373
    :sswitch_9
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v6, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 331
    :pswitch_2
    :sswitch_a
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v2, v1, v8}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 313
    :pswitch_3
    :sswitch_b
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0xb

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 270
    :pswitch_4
    :sswitch_c
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0xa

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 294
    :sswitch_d
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v7, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 281
    :pswitch_5
    :sswitch_e
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v7, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 240
    :pswitch_6
    :sswitch_f
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v5, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 356
    :sswitch_10
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v6, v8}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 320
    :sswitch_11
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v2, v1, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 288
    :pswitch_7
    :sswitch_12
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v7, v8}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 251
    :pswitch_8
    :sswitch_13
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v5, v8}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 392
    :sswitch_14
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v2, v8}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 224
    :sswitch_15
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 402
    :cond_0
    :sswitch_16
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v3, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 395
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 389
    :cond_2
    :sswitch_17
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 382
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v3, v2, v1}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_15
        0xd -> :sswitch_15
        0x10 -> :sswitch_15
        0x13 -> :sswitch_15
        0x16 -> :sswitch_15
        0x3b -> :sswitch_14
        0x3c -> :sswitch_13
        0x3d -> :sswitch_12
        0x3e -> :sswitch_13
        0x3f -> :sswitch_13
        0x40 -> :sswitch_13
        0x41 -> :sswitch_11
        0x42 -> :sswitch_11
        0x43 -> :sswitch_11
        0x44 -> :sswitch_11
        0x45 -> :sswitch_11
        0xc0 -> :sswitch_10
        0xc1 -> :sswitch_10
        0xc2 -> :sswitch_10
        0xc3 -> :sswitch_10
        0xc4 -> :sswitch_10
        0xc001 -> :sswitch_17
        0xc002 -> :sswitch_16
        0xc003 -> :sswitch_15
        0xc004 -> :sswitch_f
        0xc005 -> :sswitch_e
        0xc006 -> :sswitch_17
        0xc007 -> :sswitch_16
        0xc008 -> :sswitch_15
        0xc009 -> :sswitch_f
        0xc00a -> :sswitch_e
        0xc00b -> :sswitch_17
        0xc00c -> :sswitch_16
        0xc00d -> :sswitch_15
        0xc00e -> :sswitch_f
        0xc00f -> :sswitch_e
        0xc010 -> :sswitch_17
        0xc011 -> :sswitch_16
        0xc012 -> :sswitch_15
        0xc013 -> :sswitch_f
        0xc014 -> :sswitch_e
        0xc023 -> :sswitch_13
        0xc024 -> :sswitch_d
        0xc025 -> :sswitch_13
        0xc026 -> :sswitch_d
        0xc027 -> :sswitch_13
        0xc028 -> :sswitch_d
        0xc029 -> :sswitch_13
        0xc02a -> :sswitch_d
        0xc02b -> :sswitch_c
        0xc02c -> :sswitch_b
        0xc02d -> :sswitch_c
        0xc02e -> :sswitch_b
        0xc02f -> :sswitch_c
        0xc030 -> :sswitch_b
        0xc031 -> :sswitch_c
        0xc032 -> :sswitch_b
        0xc072 -> :sswitch_a
        0xc073 -> :sswitch_9
        0xc074 -> :sswitch_a
        0xc075 -> :sswitch_9
        0xc076 -> :sswitch_a
        0xc077 -> :sswitch_9
        0xc078 -> :sswitch_a
        0xc079 -> :sswitch_9
        0xc07a -> :sswitch_8
        0xc07b -> :sswitch_7
        0xc07c -> :sswitch_8
        0xc07d -> :sswitch_7
        0xc07e -> :sswitch_8
        0xc07f -> :sswitch_7
        0xc080 -> :sswitch_8
        0xc081 -> :sswitch_7
        0xc082 -> :sswitch_8
        0xc083 -> :sswitch_7
        0xc086 -> :sswitch_8
        0xc087 -> :sswitch_7
        0xc088 -> :sswitch_8
        0xc089 -> :sswitch_7
        0xc08a -> :sswitch_8
        0xc08b -> :sswitch_7
        0xc08c -> :sswitch_8
        0xc08d -> :sswitch_7
        0xc09c -> :sswitch_6
        0xc09d -> :sswitch_5
        0xc09e -> :sswitch_6
        0xc09f -> :sswitch_5
        0xc0a0 -> :sswitch_4
        0xc0a1 -> :sswitch_3
        0xc0a2 -> :sswitch_4
        0xc0a3 -> :sswitch_3
        0xcc13 -> :sswitch_2
        0xcc14 -> :sswitch_2
        0xcc15 -> :sswitch_2
        0xe410 -> :sswitch_1
        0xe411 -> :sswitch_0
        0xe412 -> :sswitch_1
        0xe413 -> :sswitch_0
        0xe414 -> :sswitch_1
        0xe415 -> :sswitch_0
        0xe41e -> :sswitch_1
        0xe41f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x67
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x84
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x96
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x9c
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xba
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getCipherSuites()[I
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xc02f
        0xc027
        0xc013
        0x9c
        0x3c
        0x2f
    .end array-data
.end method

.method public getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    .line 206
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    const/16 v0, 0x13

    .line 171
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_1
    const/16 v0, 0x12

    .line 135
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_2
    const/16 v0, 0x11

    .line 153
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_3
    const/16 v0, 0x10

    .line 120
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_0
    :sswitch_4
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_1
    :sswitch_5
    const/4 v0, 0x3

    .line 82
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_2
    :sswitch_6
    const/16 v0, 0x9

    .line 66
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_3
    :sswitch_7
    const/4 v0, 0x7

    .line 50
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    :pswitch_4
    :sswitch_8
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_8
        0xd -> :sswitch_7
        0x10 -> :sswitch_6
        0x13 -> :sswitch_5
        0x16 -> :sswitch_4
        0x3b -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_7
        0x3f -> :sswitch_6
        0x40 -> :sswitch_5
        0x41 -> :sswitch_8
        0x42 -> :sswitch_7
        0x43 -> :sswitch_6
        0x44 -> :sswitch_5
        0x45 -> :sswitch_4
        0xc0 -> :sswitch_8
        0xc1 -> :sswitch_7
        0xc2 -> :sswitch_6
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_4
        0xc001 -> :sswitch_3
        0xc002 -> :sswitch_3
        0xc003 -> :sswitch_3
        0xc004 -> :sswitch_3
        0xc005 -> :sswitch_3
        0xc006 -> :sswitch_2
        0xc007 -> :sswitch_2
        0xc008 -> :sswitch_2
        0xc009 -> :sswitch_2
        0xc00a -> :sswitch_2
        0xc00b -> :sswitch_1
        0xc00c -> :sswitch_1
        0xc00d -> :sswitch_1
        0xc00e -> :sswitch_1
        0xc00f -> :sswitch_1
        0xc010 -> :sswitch_0
        0xc011 -> :sswitch_0
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_0
        0xc014 -> :sswitch_0
        0xc023 -> :sswitch_2
        0xc024 -> :sswitch_2
        0xc025 -> :sswitch_3
        0xc026 -> :sswitch_3
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_0
        0xc029 -> :sswitch_1
        0xc02a -> :sswitch_1
        0xc02b -> :sswitch_2
        0xc02c -> :sswitch_2
        0xc02d -> :sswitch_3
        0xc02e -> :sswitch_3
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_1
        0xc032 -> :sswitch_1
        0xc072 -> :sswitch_2
        0xc073 -> :sswitch_2
        0xc074 -> :sswitch_3
        0xc075 -> :sswitch_3
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_0
        0xc078 -> :sswitch_1
        0xc079 -> :sswitch_1
        0xc07a -> :sswitch_8
        0xc07b -> :sswitch_8
        0xc07c -> :sswitch_4
        0xc07d -> :sswitch_4
        0xc07e -> :sswitch_6
        0xc07f -> :sswitch_6
        0xc080 -> :sswitch_5
        0xc081 -> :sswitch_5
        0xc082 -> :sswitch_7
        0xc083 -> :sswitch_7
        0xc086 -> :sswitch_2
        0xc087 -> :sswitch_2
        0xc088 -> :sswitch_3
        0xc089 -> :sswitch_3
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_1
        0xc08d -> :sswitch_1
        0xc09c -> :sswitch_8
        0xc09d -> :sswitch_8
        0xc09e -> :sswitch_4
        0xc09f -> :sswitch_4
        0xc0a0 -> :sswitch_8
        0xc0a1 -> :sswitch_8
        0xc0a2 -> :sswitch_4
        0xc0a3 -> :sswitch_4
        0xcc13 -> :sswitch_0
        0xcc14 -> :sswitch_2
        0xcc15 -> :sswitch_4
        0xe410 -> :sswitch_8
        0xe411 -> :sswitch_8
        0xe412 -> :sswitch_0
        0xe413 -> :sswitch_0
        0xe414 -> :sswitch_2
        0xe415 -> :sswitch_2
        0xe41e -> :sswitch_4
        0xe41f -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x67
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x84
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x96
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x9c
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xba
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
