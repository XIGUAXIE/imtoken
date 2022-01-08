.class Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Blob;
.super Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;
.source "ASN1Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/crypto/ASN1Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ASN1Blob"
.end annotation


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;-><init>([B)V

    return-void
.end method
