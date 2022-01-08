.class Lcmb/pb/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcmb/pb/ui/PBKeyboardActivity;


# direct methods
.method constructor <init>(Lcmb/pb/ui/PBKeyboardActivity;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->c(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "string"

    const-string v2, "cmbkb_finish_id"

    invoke-static {v0, v1, v2}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-virtual {v1}, Lcmb/pb/ui/PBKeyboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v1}, Lcmb/pb/ui/PBKeyboardActivity;->b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v1}, Lcmb/pb/ui/PBKeyboardActivity;->d(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v1}, Lcmb/pb/ui/PBKeyboardActivity;->f(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object v0, p0, Lcmb/pb/ui/b;->a:Lcmb/pb/ui/PBKeyboardActivity;

    sget-object v1, Lcmb/pb/ui/f;->f:Lcmb/pb/ui/f;

    invoke-static {v0, v1}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V

    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
