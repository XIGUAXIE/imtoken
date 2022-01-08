.class Lcmb/pb/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcmb/pb/ui/PBKeyboardActivity;


# direct methods
.method constructor <init>(Lcmb/pb/ui/PBKeyboardActivity;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/d;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcmb/pb/ui/d;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p2, p1}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/view/View;)V

    :cond_0
    return-void
.end method
