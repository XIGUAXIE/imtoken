.class Lorg/spongycastle/jcajce/provider/symmetric/Serpent$ECB$1;
.super Ljava/lang/Object;
.source "Serpent.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Serpent$ECB;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 32
    new-instance v0, Lorg/spongycastle/crypto/engines/SerpentEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;-><init>()V

    return-object v0
.end method
