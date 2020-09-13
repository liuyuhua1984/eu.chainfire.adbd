.class final Leu/chainfire/adbd/b;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Runnable;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, p0, Leu/chainfire/adbd/b;->a:Landroid/app/ProgressDialog;

    iput-object v1, p0, Leu/chainfire/adbd/b;->b:Landroid/content/Context;

    iput-object v1, p0, Leu/chainfire/adbd/b;->c:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/adbd/b;->d:Ljava/lang/String;

    iput-object v1, p0, Leu/chainfire/adbd/b;->e:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/adbd/b;->f:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/adbd/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Leu/chainfire/adbd/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Leu/chainfire/adbd/b;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 1

    iput-object p2, p0, Leu/chainfire/adbd/b;->c:Landroid/os/Handler;

    iput-object p1, p0, Leu/chainfire/adbd/b;->b:Landroid/content/Context;

    iput-object p3, p0, Leu/chainfire/adbd/b;->d:Ljava/lang/String;

    iput-object p5, p0, Leu/chainfire/adbd/b;->e:Ljava/lang/Runnable;

    iput-boolean p4, p0, Leu/chainfire/adbd/b;->f:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Leu/chainfire/adbd/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/adbd/b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/adbd/b;->b:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/adbd/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Leu/chainfire/adbd/a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Leu/chainfire/adbd/b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-boolean v0, p0, Leu/chainfire/adbd/b;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "Already patched !"

    invoke-direct {p0, v0}, Leu/chainfire/adbd/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Leu/chainfire/adbd/b;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "Could not extract assets !"

    invoke-direct {p0, v0}, Leu/chainfire/adbd/b;->a(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Leu/chainfire/adbd/b;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "Could not patch adbd !"

    invoke-direct {p0, v0}, Leu/chainfire/adbd/b;->a(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Leu/chainfire/adbd/b;->f:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    const-string v0, "Not patched !"

    invoke-direct {p0, v0}, Leu/chainfire/adbd/b;->a(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Leu/chainfire/adbd/b;->f:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_4

    const-string v0, "Could not unpatch adbd !"

    invoke-direct {p0, v0}, Leu/chainfire/adbd/b;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Leu/chainfire/adbd/b;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Leu/chainfire/adbd/b;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/adbd/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/adbd/b;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Leu/chainfire/adbd/b;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/adbd/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Leu/chainfire/adbd/b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/adbd/b;->a:Landroid/app/ProgressDialog;

    const-string v1, "Patching ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Leu/chainfire/adbd/b;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/adbd/b;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/adbd/b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Leu/chainfire/adbd/b;->a:Landroid/app/ProgressDialog;

    const-string v1, "Unpatching ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
