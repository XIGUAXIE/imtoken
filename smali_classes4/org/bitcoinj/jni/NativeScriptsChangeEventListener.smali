.class public Lorg/bitcoinj/jni/NativeScriptsChangeEventListener;
.super Ljava/lang/Object;
.source "NativeScriptsChangeEventListener.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onScriptsChanged(Lorg/bitcoinj/wallet/Wallet;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/Wallet;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/Script;",
            ">;Z)V"
        }
    .end annotation
.end method
