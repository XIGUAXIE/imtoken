.class public Lorg/spongycastle/crypto/modes/gcm/BasicGCMMultiplier;
.super Ljava/lang/Object;
.source "BasicGCMMultiplier.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 0

    .line 11
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[B

    return-void
.end method

.method public multiplyH([B)V
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[B

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    return-void
.end method
