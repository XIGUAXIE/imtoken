.class Lorg/consenlabs/imtoken/MainActivity$1;
.super Lcom/facebook/react/ReactActivityDelegate;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/MainActivity;->createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/MainActivity;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/MainActivity;Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/consenlabs/imtoken/MainActivity$1;->this$0:Lorg/consenlabs/imtoken/MainActivity;

    invoke-direct {p0, p2, p3}, Lcom/facebook/react/ReactActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createRootView()Lcom/facebook/react/ReactRootView;
    .locals 2

    .line 64
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEnabledRootView;

    iget-object v1, p0, Lorg/consenlabs/imtoken/MainActivity$1;->this$0:Lorg/consenlabs/imtoken/MainActivity;

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEnabledRootView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
