.class Lcom/microsoft/codepush/react/CodePushDialog$2;
.super Ljava/lang/Object;
.source "CodePushDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/codepush/react/CodePushDialog;->showDialogInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/codepush/react/CodePushDialog;

.field final synthetic val$successCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcom/microsoft/codepush/react/CodePushDialog;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushDialog$2;->this$0:Lcom/microsoft/codepush/react/CodePushDialog;

    iput-object p2, p0, Lcom/microsoft/codepush/react/CodePushDialog$2;->val$successCallback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 61
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushDialog$2;->val$successCallback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUnknownException;

    const-string v1, "Unknown button ID pressed."

    invoke-direct {v0, v1}, Lcom/microsoft/codepush/react/CodePushUnknownException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    throw v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/microsoft/codepush/react/CodePushDialog$2;->val$successCallback:Lcom/facebook/react/bridge/Callback;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lcom/microsoft/codepush/react/CodePushUtils;->log(Ljava/lang/Throwable;)V

    .line 75
    :goto_0
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
