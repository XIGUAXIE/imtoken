.class public Lorg/spongycastle/crypto/tls/AlwaysValidVerifyer;
.super Ljava/lang/Object;
.source "AlwaysValidVerifyer.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([Lorg/spongycastle/asn1/x509/Certificate;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
