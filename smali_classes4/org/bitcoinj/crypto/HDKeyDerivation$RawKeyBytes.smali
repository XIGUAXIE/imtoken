.class public Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;
.super Ljava/lang/Object;
.source "HDKeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/crypto/HDKeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawKeyBytes"
.end annotation


# instance fields
.field public final chainCode:[B

.field public final keyBytes:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;->keyBytes:[B

    .line 235
    iput-object p2, p0, Lorg/bitcoinj/crypto/HDKeyDerivation$RawKeyBytes;->chainCode:[B

    return-void
.end method
