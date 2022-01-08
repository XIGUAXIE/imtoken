.class Lcmb/pb/ui/cmbwidget/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcmb/pb/ui/cmbwidget/CmbEditText;


# direct methods
.method public constructor <init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/cmbwidget/d;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x159

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/d;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->c()V

    :goto_0
    return-void
.end method
