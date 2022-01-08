.class Lorg/reactnative/camera/RNCameraViewHelper$7;
.super Ljava/lang/Object;
.source "RNCameraViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/RNCameraViewHelper;->emitTouchEvent(Landroid/view/ViewGroup;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isDoubleTap:Z

.field final synthetic val$reactContext:Lcom/facebook/react/bridge/ReactContext;

.field final synthetic val$view:Landroid/view/ViewGroup;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;ZIILcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$view:Landroid/view/ViewGroup;

    iput-boolean p2, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$isDoubleTap:Z

    iput p3, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$x:I

    iput p4, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$y:I

    iput-object p5, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 254
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$view:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iget-boolean v1, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$isDoubleTap:Z

    iget v2, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$x:I

    iget v3, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$y:I

    invoke-static {v0, v1, v2, v3}, Lorg/reactnative/camera/events/TouchEvent;->obtain(IZII)Lorg/reactnative/camera/events/TouchEvent;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lorg/reactnative/camera/RNCameraViewHelper$7;->val$reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
