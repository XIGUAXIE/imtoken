.class Lproguard/ftsafe/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lproguard/ftsafe/a/j;


# direct methods
.method constructor <init>(Lproguard/ftsafe/a/j;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/a/k;->c:Lproguard/ftsafe/a/j;

    iput-object p2, p0, Lproguard/ftsafe/a/k;->a:Landroid/content/Context;

    iput-object p3, p0, Lproguard/ftsafe/a/k;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lproguard/ftsafe/a/k;->c:Lproguard/ftsafe/a/j;

    iget-object v0, v0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    iget-object v1, p0, Lproguard/ftsafe/a/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lproguard/ftsafe/a/k;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lproguard/ftsafe/a/i;->a(Lproguard/ftsafe/a/i;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
