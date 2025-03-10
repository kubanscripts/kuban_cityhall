window.addEventListener("message", function(event) {
    if (event.data.action === "open") {
        document.getElementById("cityhallUI").style.display = "block"; 
        const jobTab = document.getElementById("jobsTab");
        const lawyerTab = document.getElementById("lawyersTab");
        const policeTab = document.getElementById("policeTab");
        if (event.data.jobs) {
            loadJobs(event.data.jobs);
            jobTab.style.display = "block";
        } else {
            jobTab.style.display = "none";
        }

        if (event.data.lawyers) {
            loadLawyers(event.data.lawyers);
            lawyerTab.style.display = "block";
        } else {
            lawyerTab.style.display = "none";
        }

        if (event.data.police) {
            loadPolice(event.data.police);
            policeTab.style.display = "block";
        } else {
            policeTab.style.display = "none";
        }
    }
});

function loadJobs(jobs) {
    let jobList = document.getElementById("jobList");
    jobList.innerHTML = "";

    jobs.forEach(job => {
        let div = document.createElement("div");
        div.className = "job-card";
        div.innerHTML = `
            <span class="job-name">${job.label}</span>
            <span class="job-desc">${job.description}</span>
            <button class="select-btn" onclick="selectJob('${job.name}')">Select</button>
        `;
        jobList.appendChild(div);
    });
}

function loadLawyers(lawyers) {
    let lawyerList = document.getElementById("lawyerList");
    lawyerList.innerHTML = "";

    if (lawyers.length === 0) {
        lawyerList.innerHTML = "<p style='color: gray;'>No lawyers available.</p>";
        return;
    }

    lawyers.forEach(lawyer => {
        let div = document.createElement("div");
        div.className = "job-card";
        div.innerHTML = `
            <span class="job-name">${lawyer.name}</span>
            <span class="job-desc">${lawyer.description}</span>
        `;
        lawyerList.appendChild(div);
    });
}

function loadPolice(police) {
    let policeList = document.getElementById("policeList");
    policeList.innerHTML = "";

    if (police.length === 0) {
        policeList.innerHTML = "<p style='color: gray;'>No police officers listed.</p>";
        return;
    }

    police.forEach(officer => {
        let div = document.createElement("div");
        div.className = "job-card";
        div.innerHTML = `
            <span class="job-name">${officer.name}</span>
            <span class="job-desc">${officer.description}</span>
        `;
        policeList.appendChild(div);
    });
}

function selectJob(job) {
    fetch(`https://kuban_cityhall/selectJob`, { method: "POST", body: JSON.stringify({ job }) });
    closeUI();
}

function closeUI() {
    fetch(`https://kuban_cityhall/close`, { 
        method: "POST", 
        body: JSON.stringify({}) 
    });
    document.getElementById("cityhallUI").style.display = "none"; 
}

function showTab(tab) {
    document.getElementById("jobList").style.display = tab === "jobs" ? "grid" : "none";
    document.getElementById("lawyerList").style.display = tab === "lawyers" ? "grid" : "none";
    document.getElementById("policeList").style.display = tab === "police" ? "grid" : "none";

    document.querySelectorAll(".tab-btn").forEach(btn => btn.classList.remove("active"));
    document.getElementById(tab + "Tab").classList.add("active");
}

document.addEventListener("keydown", function(event) {
    if (event.key === "Escape") {
        closeUI();
    }
});
