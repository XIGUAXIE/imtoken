.class public Lorg/bitcoinj/crypto/X509Utils;
.super Ljava/lang/Object;
.source "X509Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayNameFromCertificate(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;
    .locals 12
    .param p0    # Ljava/security/cert/X509Certificate;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 53
    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v9, v0, v4

    .line 56
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v9

    .line 57
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface {v10}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v10

    .line 58
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    .line 59
    sget-object v11, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->cn:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v5, v10

    goto :goto_1

    .line 61
    :cond_0
    sget-object v11, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->o:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v6, v10

    goto :goto_1

    .line 63
    :cond_1
    sget-object v11, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->l:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v7, v10

    goto :goto_1

    .line 65
    :cond_2
    sget-object v11, Lorg/spongycastle/asn1/x500/style/RFC4519Style;->c:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v8, v10

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_5

    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_8

    if-eqz p1, :cond_7

    const-string p0, ", "

    .line 76
    invoke-static {p0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v8, p1, v2

    invoke-virtual {p0, v6, v7, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    return-object v6

    :cond_8
    if-eqz v5, :cond_9

    return-object v5

    :cond_9
    return-object v3
.end method

.method public static loadKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/KeyStore;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 94
    :try_start_2
    new-instance p1, Ljava/security/KeyStoreException;

    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 92
    new-instance p1, Ljava/security/KeyStoreException;

    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 100
    :catch_3
    throw p0
.end method
