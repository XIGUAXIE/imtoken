.class Lcom/masteratul/exceptionhandler/DefaultErrorScreen$2;
.super Ljava/lang/Object;
.source "DefaultErrorScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/masteratul/exceptionhandler/DefaultErrorScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/masteratul/exceptionhandler/DefaultErrorScreen;


# direct methods
.method constructor <init>(Lcom/masteratul/exceptionhandler/DefaultErrorScreen;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/masteratul/exceptionhandler/DefaultErrorScreen$2;->this$0:Lcom/masteratul/exceptionhandler/DefaultErrorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/masteratul/exceptionhandler/DefaultErrorScreen$2;->this$0:Lcom/masteratul/exceptionhandler/DefaultErrorScreen;

    invoke-virtual {v0}, Lcom/masteratul/exceptionhandler/DefaultErrorScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/masteratul/exceptionhandler/DefaultErrorScreen;->doRestart(Landroid/content/Context;)V

    .line 57
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
