.class Lproguard/ftsafe/d/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lproguard/ftsafe/d/a;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lproguard/ftsafe/d/a;I)V
    .locals 1

    iput-object p1, p0, Lproguard/ftsafe/d/f;->a:Lproguard/ftsafe/d/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p1}, Lproguard/ftsafe/d/a;->e(Lproguard/ftsafe/d/a;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lproguard/ftsafe/d/a;->e(Lproguard/ftsafe/d/a;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/d/f;->b:Ljava/io/InputStream;

    invoke-static {p1}, Lproguard/ftsafe/d/a;->e(Lproguard/ftsafe/d/a;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lproguard/ftsafe/d/f;->c:Ljava/io/OutputStream;

    iput p2, p0, Lproguard/ftsafe/d/f;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "state is disconnect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lproguard/ftsafe/d/f;->e:Z

    return v0
.end method

.method public a([BI)Z
    .locals 2

    iget-boolean v0, p0, Lproguard/ftsafe/d/f;->e:Z

    if-nez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lproguard/ftsafe/d/f;->c:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproguard/ftsafe/d/f;->e:Z

    :try_start_0
    iget-object v0, p0, Lproguard/ftsafe/d/f;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lproguard/ftsafe/d/f;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lproguard/ftsafe/d/f;->a:Lproguard/ftsafe/d/a;

    invoke-static {v0}, Lproguard/ftsafe/d/a;->e(Lproguard/ftsafe/d/a;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lproguard/ftsafe/d/f;->a:Lproguard/ftsafe/d/a;

    invoke-virtual {v0}, Lproguard/ftsafe/d/a;->a()V

    return-void
.end method

.method public run()V
    .locals 4

    iget v0, p0, Lproguard/ftsafe/d/f;->d:I

    new-array v0, v0, [B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lproguard/ftsafe/d/f;->e:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lproguard/ftsafe/d/f;->e:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lproguard/ftsafe/d/f;->b:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lproguard/ftsafe/d/f;->a:Lproguard/ftsafe/d/a;

    invoke-static {v2}, Lproguard/ftsafe/d/a;->h(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/c/e;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lproguard/ftsafe/d/f;->a:Lproguard/ftsafe/d/a;

    invoke-static {v2}, Lproguard/ftsafe/d/a;->h(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/c/e;

    move-result-object v2

    iget-object v3, p0, Lproguard/ftsafe/d/f;->a:Lproguard/ftsafe/d/a;

    invoke-static {v3}, Lproguard/ftsafe/d/a;->i(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/c/a;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lproguard/ftsafe/c/e;->a(Lproguard/ftsafe/c/a;[BI)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
