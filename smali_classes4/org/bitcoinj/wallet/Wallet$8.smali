.class Lorg/bitcoinj/wallet/Wallet$8;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/Wallet;->queueOnScriptsChanged(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/wallet/Wallet;

.field final synthetic val$isAddingScripts:Z

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

.field final synthetic val$scripts:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/utils/ListenerRegistration;Ljava/util/List;Z)V
    .locals 0

    .line 2789
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet$8;->this$0:Lorg/bitcoinj/wallet/Wallet;

    iput-object p2, p0, Lorg/bitcoinj/wallet/Wallet$8;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/wallet/Wallet$8;->val$scripts:Ljava/util/List;

    iput-boolean p4, p0, Lorg/bitcoinj/wallet/Wallet$8;->val$isAddingScripts:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2792
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet$8;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet$8;->this$0:Lorg/bitcoinj/wallet/Wallet;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet$8;->val$scripts:Ljava/util/List;

    iget-boolean v3, p0, Lorg/bitcoinj/wallet/Wallet$8;->val$isAddingScripts:Z

    invoke-interface {v0, v1, v2, v3}, Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;->onScriptsChanged(Lorg/bitcoinj/wallet/Wallet;Ljava/util/List;Z)V

    return-void
.end method
