.class public Lorg/consenlabs/imtoken/walletapi/Buffer;
.super Lcom/sun/jna/Structure;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/Buffer$ByValue;
    }
.end annotation


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 2

    const-string v0, "data"

    const-string v1, "len"

    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
