.class final Leu/chainfire/adbd/q;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/adbd/MainActivity;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Leu/chainfire/adbd/MainActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Leu/chainfire/adbd/q;->a:Leu/chainfire/adbd/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Leu/chainfire/adbd/q;->b:Landroid/app/ProgressDialog;

    iput-object v0, p0, Leu/chainfire/adbd/q;->c:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Leu/chainfire/adbd/MainActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/adbd/q;-><init>(Leu/chainfire/adbd/MainActivity;)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/adbd/q;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/q;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Leu/chainfire/adbd/q;)Leu/chainfire/adbd/MainActivity;
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/q;->a:Leu/chainfire/adbd/MainActivity;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/adbd/q;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Leu/chainfire/adbd/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Checking SuperUser support ..."

    new-instance v1, Leu/chainfire/adbd/s;

    invoke-direct {v1, p0}, Leu/chainfire/adbd/s;-><init>(Leu/chainfire/adbd/q;)V

    iput-object v0, v1, Leu/chainfire/adbd/s;->a:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/adbd/q;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Leu/chainfire/adbd/u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Integer;

    :try_start_0
    iget-object v0, p0, Leu/chainfire/adbd/q;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/adbd/q;->a:Leu/chainfire/adbd/MainActivity;

    const-string v1, "SuperUser access is needed, but could not be acquired. Are you rooted and did you give permission ?"

    const-string v2, "OK"

    new-instance v3, Leu/chainfire/adbd/r;

    invoke-direct {v3, p0}, Leu/chainfire/adbd/r;-><init>(Leu/chainfire/adbd/q;)V

    invoke-static {v0, v1, v2, v3}, Leu/chainfire/adbd/MainActivity;->a(Leu/chainfire/adbd/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/adbd/q;->a:Leu/chainfire/adbd/MainActivity;

    iget-object v1, p0, Leu/chainfire/adbd/q;->a:Leu/chainfire/adbd/MainActivity;

    invoke-static {v1}, Leu/chainfire/adbd/MainActivity;->b(Leu/chainfire/adbd/MainActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Leu/chainfire/adbd/MainActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/adbd/q;->a:Leu/chainfire/adbd/MainActivity;

    invoke-static {v1}, Leu/chainfire/adbd/MainActivity;->a(Leu/chainfire/adbd/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/adbd/q;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Leu/chainfire/adbd/q;->b:Landroid/app/ProgressDialog;

    const-string v1, "adbd Insecure"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/adbd/q;->b:Landroid/app/ProgressDialog;

    const-string v1, "Loading ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/adbd/q;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/adbd/q;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/adbd/q;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
