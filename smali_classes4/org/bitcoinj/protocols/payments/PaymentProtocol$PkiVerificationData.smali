.class public Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;
.super Ljava/lang/Object;
.source "PaymentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/payments/PaymentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkiVerificationData"
.end annotation


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final merchantSigningKey:Ljava/security/PublicKey;

.field public final rootAuthority:Ljava/security/cert/TrustAnchor;

.field public final rootAuthorityName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/cert/TrustAnchor;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;->displayName:Ljava/lang/String;

    .line 265
    iput-object p2, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;->merchantSigningKey:Ljava/security/PublicKey;

    .line 266
    iput-object p3, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;->rootAuthority:Ljava/security/cert/TrustAnchor;

    .line 267
    invoke-virtual {p3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/bitcoinj/crypto/X509Utils;->getDisplayNameFromCertificate(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;->rootAuthorityName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 269
    new-instance p2, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/cert/TrustAnchor;Lorg/bitcoinj/protocols/payments/PaymentProtocol$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/payments/PaymentProtocolException$PkiVerificationException;
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;-><init>(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/cert/TrustAnchor;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 275
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;->displayName:Ljava/lang/String;

    const-string v2, "displayName"

    .line 276
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;->rootAuthorityName:Ljava/lang/String;

    const-string v2, "rootAuthorityName"

    .line 277
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;->merchantSigningKey:Ljava/security/PublicKey;

    const-string v2, "merchantSigningKey"

    .line 278
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$PkiVerificationData;->rootAuthority:Ljava/security/cert/TrustAnchor;

    const-string v2, "rootAuthority"

    .line 279
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
