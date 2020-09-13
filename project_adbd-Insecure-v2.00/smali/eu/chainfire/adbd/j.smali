.class final Leu/chainfire/adbd/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/adbd/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/adbd/MainActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/adbd/j;->a:Leu/chainfire/adbd/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Leu/chainfire/adbd/j;)Leu/chainfire/adbd/MainActivity;
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/j;->a:Leu/chainfire/adbd/MainActivity;

    return-object v0
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Leu/chainfire/adbd/j;->a:Leu/chainfire/adbd/MainActivity;

    invoke-static {v0}, Leu/chainfire/adbd/MainActivity;->c(Leu/chainfire/adbd/MainActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/adbd/j;->a:Leu/chainfire/adbd/MainActivity;

    invoke-static {v0}, Leu/chainfire/adbd/MainActivity;->a(Leu/chainfire/adbd/MainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/adbd/j;->a:Leu/chainfire/adbd/MainActivity;

    invoke-static {v1}, Leu/chainfire/adbd/MainActivity;->d(Leu/chainfire/adbd/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "adbd Insecure"

    const/4 v3, 0x1

    new-instance v4, Leu/chainfire/adbd/k;

    invoke-direct {v4, p0}, Leu/chainfire/adbd/k;-><init>(Leu/chainfire/adbd/j;)V

    invoke-static {v0, v1, v2, v3, v4}, Leu/chainfire/adbd/a;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/Runnable;)V

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Leu/chainfire/adbd/j;->a:Leu/chainfire/adbd/MainActivity;

    invoke-static {v0}, Leu/chainfire/adbd/MainActivity;->a(Leu/chainfire/adbd/MainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/adbd/j;->a:Leu/chainfire/adbd/MainActivity;

    invoke-static {v1}, Leu/chainfire/adbd/MainActivity;->d(Leu/chainfire/adbd/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "adbd Insecure"

    new-instance v3, Leu/chainfire/adbd/l;

    invoke-direct {v3, p0}, Leu/chainfire/adbd/l;-><init>(Leu/chainfire/adbd/j;)V

    invoke-static {v0, v1, v2, v5, v3}, Leu/chainfire/adbd/a;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
