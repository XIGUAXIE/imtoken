.class Lcmb/pb/util/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcmb/pb/util/CMBKeyboardFunc;


# direct methods
.method constructor <init>(Lcmb/pb/util/CMBKeyboardFunc;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcmb/pb/util/b;)Lcmb/pb/util/CMBKeyboardFunc;
    .locals 0

    iget-object p0, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    new-instance v1, Lcmb/pb/util/c;

    invoke-direct {v1, p0}, Lcmb/pb/util/c;-><init>(Lcmb/pb/util/b;)V

    invoke-static {v0, v1}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Lcmb/pb/ui/g;)V

    iget-object v0, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->h(Lcmb/pb/util/CMBKeyboardFunc;)Lcmb/pb/ui/g;

    move-result-object v0

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/g;)V

    iget-object v0, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    new-instance v1, Lcmb/pb/util/f;

    iget-object v2, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-direct {v1, v2}, Lcmb/pb/util/f;-><init>(Lcmb/pb/util/CMBKeyboardFunc;)V

    invoke-static {v0, v1}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Lcmb/pb/util/f;)V

    iget-object v0, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->i(Lcmb/pb/util/CMBKeyboardFunc;)Lcmb/pb/util/f;

    move-result-object v0

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->a(Landroid/os/Handler;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcmb/pb/cmbsafe/b;->a:Ljava/lang/Boolean;

    iget-object v0, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/cmbsafe/b;->a(Lcmb/pb/util/CMBKeyboardFunc;)V

    const-string v0, "callKeyBoardActivity"

    invoke-static {v0}, Lcmb/pb/cmbsafe/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->j(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcmb/pb/util/b;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v2}, Lcmb/pb/util/CMBKeyboardFunc;->j(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcmb/pb/cmbsafe/CmbService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
