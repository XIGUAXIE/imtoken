.class Lproguard/ftsafe/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lproguard/ftsafe/a/a;


# direct methods
.method constructor <init>(Lproguard/ftsafe/a/a;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/a/d;->a:Lproguard/ftsafe/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/a/d;->a:Lproguard/ftsafe/a/a;

    invoke-static {v0}, Lproguard/ftsafe/a/a;->c(Lproguard/ftsafe/a/a;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lproguard/ftsafe/a/d;->a:Lproguard/ftsafe/a/a;

    invoke-static {v0}, Lproguard/ftsafe/a/a;->d(Lproguard/ftsafe/a/a;)Lproguard/ftsafe/a/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lproguard/ftsafe/a/h;->a(Landroid/view/View;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
