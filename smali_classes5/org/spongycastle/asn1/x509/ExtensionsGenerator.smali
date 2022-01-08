.class public Lorg/spongycastle/asn1/x509/ExtensionsGenerator;
.super Ljava/lang/Object;
.source "ExtensionsGenerator.java"


# instance fields
.field private extOrdering:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-interface {p3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p3

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-void
.end method

.method public addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/asn1/x509/Extension;

    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v2, p3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, p1, p2, v2}, Lorg/spongycastle/asn1/x509/Extension;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 61
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extension "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already added"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public generate()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 4

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/Extension;

    const/4 v1, 0x0

    .line 87
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 89
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/x509/Extension;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/x509/Extensions;-><init>([Lorg/spongycastle/asn1/x509/Extension;)V

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    return-void
.end method
