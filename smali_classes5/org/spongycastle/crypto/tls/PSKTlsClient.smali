.class public abstract Lorg/spongycastle/crypto/tls/PSKTlsClient;
.super Lorg/spongycastle/crypto/tls/AbstractTlsClient;
.source "PSKTlsClient.java"


# instance fields
.field protected pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;Lorg/spongycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    .line 19
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    return-void
.end method


# virtual methods
.method protected createPSKKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 9

    .line 253
    new-instance v8, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->namedCurves:[I

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->clientECPointFormats:[S

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->serverECPointFormats:[S

    const/4 v4, 0x0

    move-object v0, v8

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/tls/TlsPSKIdentity;Lorg/spongycastle/crypto/params/DHParameters;[I[S[S)V

    return-object v8
.end method

.method public getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->selectedCipherSuite:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/16 v3, 0x9

    const/16 v4, 0x8

    packed-switch v0, :pswitch_data_1

    const/4 v5, 0x4

    const/4 v6, 0x3

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    .line 247
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 239
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x65

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x12

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 172
    :pswitch_4
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_5
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_6
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_7
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v6}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 203
    :pswitch_8
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x14

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 192
    :pswitch_9
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0x13

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 227
    :pswitch_a
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v2, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 221
    :pswitch_b
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v2, v6}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 168
    :pswitch_c
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v3, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 143
    :pswitch_d
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v4, v6}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_e
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0xb

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_f
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v3, 0xa

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 162
    :pswitch_10
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 137
    :pswitch_11
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v2, v4, v1}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_12
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v3, 0x7

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 233
    :pswitch_13
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v2, v1, v1}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 215
    :pswitch_14
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v3, v2, v1}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8a
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa8
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc033
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_d
        :pswitch_c
        :pswitch_14
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc08e
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc0a4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xe416
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCipherSuites()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xc037
        0xc035
        0xb6
        0x94
    .end array-data
.end method

.method public getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->selectedCipherSuite:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    .line 119
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    const/16 v0, 0x18

    .line 69
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_1
    const/16 v0, 0xf

    .line 111
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_2
    const/16 v0, 0xe

    .line 54
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_3
    const/16 v0, 0xd

    .line 92
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa8
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc033
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc08e
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc0a4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xe416
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
