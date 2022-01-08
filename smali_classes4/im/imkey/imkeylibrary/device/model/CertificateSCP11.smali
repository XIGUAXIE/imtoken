.class public Lim/imkey/imkeylibrary/device/model/CertificateSCP11;
.super Lim/imkey/imkeylibrary/utils/TLVUtil;
.source "CertificateSCP11.java"


# static fields
.field public static final OPTION_LENGTH_OFF:B = 0x1t

.field public static final OPTION_TAG_OFF:B = 0x0t

.field public static final OPTION_VALUE_LENGTH:B = 0x3t

.field public static final OPTION_VALUE_OFF:B = 0x2t


# instance fields
.field public _42_identifier:[B

.field public _53_DiscretionaryData:[B

.field public _5F20_subjectID:[B

.field public _5F24_ExpirationDate:[B

.field public _5F25_EffectiveDate:[B

.field public _5F37_Signature:[B

.field public _73_DiscretionaryData:[B

.field public _7F49_PubKey:[B

.field public _93_csn:[B

.field public _95_keyUsage:[B

.field public _BF20:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/utils/TLVUtil;-><init>([B)V

    return-void
.end method

.method public constructor <init>([BSS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lim/imkey/imkeylibrary/utils/TLVUtil;-><init>([BSS)V

    return-void
.end method


# virtual methods
.method public getSignatureBytes()[B
    .locals 1

    const/16 v0, 0x5f37

    .line 264
    :try_start_0
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->getSubTLVValue(S)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSignatureMessage()[B
    .locals 4

    const/4 v0, 0x0

    .line 241
    :try_start_0
    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->data:[B

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseTag([BSS)S

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v1, v0

    int-to-short v1, v1

    .line 243
    :try_start_1
    iget-object v3, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->data:[B

    invoke-static {v3, v1, v2}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseLength([BSS)I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    const/16 v2, 0x5f37

    .line 248
    invoke-virtual {p0, v2, v0}, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->getSubTLVInfo(SB)S

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    .line 251
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    :goto_1
    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->data:[B

    invoke-static {v2, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getSubTLVInfo(SB)S
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->data:[B

    .line 135
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->size()S

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x5

    .line 137
    invoke-static {v0, v2, v3}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseLength([BSS)I

    move-result v3

    const v4, 0xffff

    and-int v5, v3, v4

    int-to-short v5, v5

    shr-int/lit8 v3, v3, 0x10

    int-to-short v3, v3

    add-int/2addr v3, v2

    int-to-short v3, v3

    add-int/2addr v5, v3

    int-to-short v5, v5

    :goto_0
    if-ge v3, v5, :cond_6

    .line 144
    invoke-static {v0, v3, v1}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseTag([BSS)S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 147
    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    goto :goto_1

    :cond_0
    if-ne v6, v2, :cond_5

    .line 149
    invoke-static {v0, v3}, Lim/imkey/imkeylibrary/utils/TLVUtil;->getShort([BS)S

    move-result v8

    :goto_1
    add-int/2addr v6, v3

    int-to-short v9, v6

    .line 154
    invoke-static {v0, v9, v1}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseLength([BSS)I

    move-result v10

    and-int v11, v10, v4

    int-to-short v11, v11

    shr-int/lit8 v10, v10, 0x10

    int-to-short v10, v10

    if-ne p1, v8, :cond_4

    if-eqz p2, :cond_7

    if-eq p2, v7, :cond_3

    if-eq p2, v2, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v11

    goto :goto_3

    :cond_2
    add-int/2addr v6, v10

    int-to-short v3, v6

    goto :goto_3

    :cond_3
    move v3, v9

    goto :goto_3

    :cond_4
    add-int/2addr v9, v10

    int-to-short v3, v9

    add-int/2addr v3, v11

    int-to-short v3, v3

    goto :goto_0

    .line 151
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "certificate data error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    const/4 v3, -0x1

    :cond_7
    :goto_3
    return v3
.end method

.method public getSubTLVValue(S)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->data:[B

    .line 197
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->size()S

    move-result v1

    const/4 v2, 0x2

    .line 199
    invoke-static {v0, v2, v1}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseLength([BSS)I

    move-result v3

    const v4, 0xffff

    and-int v5, v3, v4

    int-to-short v5, v5

    shr-int/lit8 v3, v3, 0x10

    int-to-short v3, v3

    add-int/2addr v3, v2

    int-to-short v3, v3

    add-int/2addr v5, v3

    int-to-short v5, v5

    :goto_0
    if-ge v3, v5, :cond_3

    .line 206
    invoke-static {v0, v3, v1}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseTag([BSS)S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 209
    aget-byte v7, v0, v3

    int-to-short v7, v7

    goto :goto_1

    :cond_0
    if-ne v6, v2, :cond_2

    .line 211
    invoke-static {v0, v3}, Lim/imkey/imkeylibrary/utils/TLVUtil;->getShort([BS)S

    move-result v7

    :goto_1
    add-int/2addr v3, v6

    int-to-short v6, v3

    .line 216
    invoke-static {v0, v6, v1}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseLength([BSS)I

    move-result v8

    and-int v9, v8, v4

    int-to-short v9, v9

    shr-int/lit8 v8, v8, 0x10

    int-to-short v8, v8

    if-ne p1, v7, :cond_1

    add-int/2addr v3, v8

    add-int/2addr v9, v3

    .line 221
    invoke-static {v0, v3, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    goto :goto_2

    :cond_1
    add-int/2addr v6, v8

    int-to-short v3, v6

    add-int/2addr v3, v9

    int-to-short v3, v3

    goto :goto_0

    .line 213
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "certificate data error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public get_42_identifier()[B
    .locals 1

    .line 43
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_42_identifier:[B

    return-object v0
.end method

.method public get_53_DiscretionaryData()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_53_DiscretionaryData:[B

    return-object v0
.end method

.method public get_5F20_subjectID()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_5F20_subjectID:[B

    return-object v0
.end method

.method public get_5F24_ExpirationDate()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_5F24_ExpirationDate:[B

    return-object v0
.end method

.method public get_5F25_EffectiveDate()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_5F25_EffectiveDate:[B

    return-object v0
.end method

.method public get_5F37_Signature()[B
    .locals 1

    .line 115
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_5F37_Signature:[B

    return-object v0
.end method

.method public get_73_DiscretionaryData()[B
    .locals 1

    .line 91
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_73_DiscretionaryData:[B

    return-object v0
.end method

.method public get_7F49_PubKey()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_7F49_PubKey:[B

    return-object v0
.end method

.method public get_93_csn()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_93_csn:[B

    return-object v0
.end method

.method public get_95_keyUsage()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_95_keyUsage:[B

    return-object v0
.end method

.method public get_BF20()[B
    .locals 1

    .line 99
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_BF20:[B

    return-object v0
.end method

.method public set_42_identifier([B)V
    .locals 0

    .line 47
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_42_identifier:[B

    return-void
.end method

.method public set_53_DiscretionaryData([B)V
    .locals 0

    .line 87
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_53_DiscretionaryData:[B

    return-void
.end method

.method public set_5F20_subjectID([B)V
    .locals 0

    .line 55
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_5F20_subjectID:[B

    return-void
.end method

.method public set_5F24_ExpirationDate([B)V
    .locals 0

    .line 79
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_5F24_ExpirationDate:[B

    return-void
.end method

.method public set_5F25_EffectiveDate([B)V
    .locals 0

    .line 71
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_5F25_EffectiveDate:[B

    return-void
.end method

.method public set_5F37_Signature([B)V
    .locals 0

    .line 119
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_5F37_Signature:[B

    return-void
.end method

.method public set_73_DiscretionaryData([B)V
    .locals 0

    .line 95
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_73_DiscretionaryData:[B

    return-void
.end method

.method public set_7F49_PubKey([B)V
    .locals 0

    .line 111
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_7F49_PubKey:[B

    return-void
.end method

.method public set_93_csn([B)V
    .locals 0

    .line 39
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_93_csn:[B

    return-void
.end method

.method public set_95_keyUsage([B)V
    .locals 0

    .line 63
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_95_keyUsage:[B

    return-void
.end method

.method public set_BF20([B)V
    .locals 0

    .line 103
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->_BF20:[B

    return-void
.end method
