.class Lcom/facebook/react/devsupport/DevSupportManagerImpl$9$1;
.super Ljava/lang/Object;
.source "DevSupportManagerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;->onOptionSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;Landroid/widget/EditText;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$9$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$9$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$9$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$9$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;

    iget-object v1, v1, Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->setDebugServerHost(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$9$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$9;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->handleReloadJS()V

    .line 515
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
