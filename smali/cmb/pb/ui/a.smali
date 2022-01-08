.class Lcmb/pb/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcmb/pb/ui/PBKeyboardActivity;


# direct methods
.method constructor <init>(Lcmb/pb/ui/PBKeyboardActivity;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/a;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcmb/pb/ui/a;->a:Lcmb/pb/ui/PBKeyboardActivity;

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/PBKeyboardActivity;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
