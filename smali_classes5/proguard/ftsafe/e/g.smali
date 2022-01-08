.class Lproguard/ftsafe/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lproguard/ftsafe/e/b;


# direct methods
.method constructor <init>(Lproguard/ftsafe/e/b;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/e/g;->a:Lproguard/ftsafe/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lproguard/ftsafe/e/g;->a:Lproguard/ftsafe/e/b;

    invoke-static {v0}, Lproguard/ftsafe/e/b;->n(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/d;

    move-result-object v0

    iget-object v1, p0, Lproguard/ftsafe/e/g;->a:Lproguard/ftsafe/e/b;

    invoke-static {v1}, Lproguard/ftsafe/e/b;->i(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/a;

    move-result-object v1

    iget-object v2, p0, Lproguard/ftsafe/e/g;->a:Lproguard/ftsafe/e/b;

    invoke-static {v2}, Lproguard/ftsafe/e/b;->l(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/b/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lproguard/ftsafe/c/d;->a(Lproguard/ftsafe/c/a;Lproguard/ftsafe/b/a;Lproguard/ftsafe/b/c;)V

    return-void
.end method
