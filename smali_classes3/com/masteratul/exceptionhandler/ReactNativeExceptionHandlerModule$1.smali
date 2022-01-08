.class Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;
.super Ljava/lang/Object;
.source "ReactNativeExceptionHandlerModule.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->setHandlerforNativeException(ZZLcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

.field final synthetic val$executeOriginalUncaughtExceptionHandler:Z

.field final synthetic val$forceToQuit:Z


# direct methods
.method constructor <init>(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;ZZ)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

    iput-boolean p2, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->val$executeOriginalUncaughtExceptionHandler:Z

    iput-boolean p3, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->val$forceToQuit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .line 47
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

    invoke-static {v1}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$000(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;)Lcom/facebook/react/bridge/Callback;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$100()Lcom/masteratul/exceptionhandler/NativeExceptionHandlerIfc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$100()Lcom/masteratul/exceptionhandler/NativeExceptionHandlerIfc;

    move-result-object v0

    iget-object v1, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

    invoke-static {v1}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$200(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/masteratul/exceptionhandler/NativeExceptionHandlerIfc;->handleNativeException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

    invoke-static {v1}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$400(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$302(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;Landroid/app/Activity;)Landroid/app/Activity;

    .line 55
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 56
    iget-object v2, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

    invoke-static {v2}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$300(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$500()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "stack_trace_string"

    .line 57
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 58
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    iget-object v0, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

    invoke-static {v0}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$300(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v0, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

    invoke-static {v0}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$300(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 63
    iget-boolean v0, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->val$executeOriginalUncaughtExceptionHandler:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

    invoke-static {v0}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$200(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->this$0:Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;

    invoke-static {v0}, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;->access$200(Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 67
    :cond_1
    iget-boolean p1, p0, Lcom/masteratul/exceptionhandler/ReactNativeExceptionHandlerModule$1;->val$forceToQuit:Z

    if-eqz p1, :cond_2

    .line 68
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_2
    :goto_0
    return-void
.end method
