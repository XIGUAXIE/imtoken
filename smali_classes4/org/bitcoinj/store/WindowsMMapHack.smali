.class public Lorg/bitcoinj/store/WindowsMMapHack;
.super Ljava/lang/Object;
.source "WindowsMMapHack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceRelease(Ljava/nio/MappedByteBuffer;)V
    .locals 0

    .line 34
    check-cast p0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Lsun/misc/Cleaner;->clean()V

    :cond_0
    return-void
.end method
