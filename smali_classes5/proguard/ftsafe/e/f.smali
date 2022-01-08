.class Lproguard/ftsafe/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lproguard/ftsafe/e/b;


# direct methods
.method constructor <init>(Lproguard/ftsafe/e/b;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/e/f;->a:Lproguard/ftsafe/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lproguard/ftsafe/e/f;->a:Lproguard/ftsafe/e/b;

    invoke-static {v0}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u66f4\u65b0\u72b6\u6001"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->d(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/e/f;->a:Lproguard/ftsafe/e/b;

    invoke-static {v0}, Lproguard/ftsafe/e/b;->n(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/d;

    move-result-object v0

    iget-object v1, p0, Lproguard/ftsafe/e/f;->a:Lproguard/ftsafe/e/b;

    invoke-static {v1}, Lproguard/ftsafe/e/b;->i(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/a;

    move-result-object v1

    iget-object v2, p0, Lproguard/ftsafe/e/f;->a:Lproguard/ftsafe/e/b;

    invoke-static {v2}, Lproguard/ftsafe/e/b;->l(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/b/a;

    move-result-object v2

    iget-object v3, p0, Lproguard/ftsafe/e/f;->a:Lproguard/ftsafe/e/b;

    invoke-static {v3}, Lproguard/ftsafe/e/b;->m(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/b/c;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lproguard/ftsafe/c/d;->a(Lproguard/ftsafe/c/a;Lproguard/ftsafe/b/a;Lproguard/ftsafe/b/c;)V

    return-void
.end method
