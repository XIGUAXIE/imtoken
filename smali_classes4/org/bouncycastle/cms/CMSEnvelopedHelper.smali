.class Lorg/bouncycastle/cms/CMSEnvelopedHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;,
        Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;,
        Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;
    }
.end annotation


# static fields
.field private static final BASE_CIPHER_NAMES:Ljava/util/Map;

.field private static final CIPHER_ALG_NAMES:Ljava/util/Map;

.field static final INSTANCE:Lorg/bouncycastle/cms/CMSEnvelopedHelper;

.field private static final KEYSIZES:Ljava/util/Map;

.field private static final MAC_ALG_NAMES:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSEnvelopedHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDE/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDEMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AESMac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p0

    return-object p0
.end method

.method static buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/RecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v2

    invoke-static {v0, v2, p1, p2, p3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/RecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/cms/RecipientInformationStore;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/RecipientInformationStore;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private static readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/RecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/RecipientInfo;->getInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;

    check-cast p1, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/KeyTransRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/cms/KEKRecipientInformation;

    check-cast p1, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/KEKRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/cms/PasswordRecipientInformation;

    check-cast p1, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/PasswordRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method getKeySize(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no keysize for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
