.class Lproguard/ftsafe/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lproguard/ftsafe/a/a;


# direct methods
.method constructor <init>(Lproguard/ftsafe/a/a;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/a/e;->a:Lproguard/ftsafe/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/a/e;->a:Lproguard/ftsafe/a/a;

    invoke-static {v0}, Lproguard/ftsafe/a/a;->c(Lproguard/ftsafe/a/a;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lproguard/ftsafe/a/e;->a:Lproguard/ftsafe/a/a;

    invoke-static {v0}, Lproguard/ftsafe/a/a;->d(Lproguard/ftsafe/a/a;)Lproguard/ftsafe/a/h;

    move-result-object v0

    iget-object v1, p0, Lproguard/ftsafe/a/e;->a:Lproguard/ftsafe/a/a;

    invoke-static {v1}, Lproguard/ftsafe/a/a;->e(Lproguard/ftsafe/a/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lproguard/ftsafe/a/h;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
