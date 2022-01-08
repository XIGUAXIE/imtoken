.class Lcmb/pb/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcmb/pb/ui/PBKeyboardActivity;


# direct methods
.method constructor <init>(Lcmb/pb/ui/PBKeyboardActivity;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/e;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcmb/pb/ui/e;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {p2, p1}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
