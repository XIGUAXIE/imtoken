.class Lcn/jiguang/plugins/analytics/JAnalyticsModule$2;
.super Ljava/lang/Object;
.source "JAnalyticsModule.java"

# interfaces
.implements Lcn/jiguang/analytics/android/api/AccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jiguang/plugins/analytics/JAnalyticsModule;->detachAccount(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jiguang/plugins/analytics/JAnalyticsModule;

.field final synthetic val$fail:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$success:Lcom/facebook/react/bridge/Callback;


# direct methods
.method constructor <init>(Lcn/jiguang/plugins/analytics/JAnalyticsModule;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule$2;->this$0:Lcn/jiguang/plugins/analytics/JAnalyticsModule;

    iput-object p2, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule$2;->val$success:Lcom/facebook/react/bridge/Callback;

    iput-object p3, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule$2;->val$fail:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 222
    iget-object p1, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule$2;->val$success:Lcom/facebook/react/bridge/Callback;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcn/jiguang/plugins/analytics/JAnalyticsModule$2;->val$fail:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
